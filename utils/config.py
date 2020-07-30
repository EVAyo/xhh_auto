
'''
# @Author       : Chr_
# @Date         : 2020-07-29 14:21:39
# @LastEditors  : Chr_
# @LastEditTime : 2020-07-30 16:02:31
# @Description  : 读取并验证配置
'''

import toml
import os
from .log import get_logger, init_logger
from xhh_client.error import ConfigError

logger = get_logger('Setting')

SCRIPT_PATH = f'{os.path.split(os.path.realpath(__file__))[0][:-5]}'

DEFAULT_PATH = f'{SCRIPT_PATH}config.toml'

CFG = {}


def get_script_path() -> str:
    '''获取脚本所在路径
    返回:
        str: 脚本所在路径
    '''
    return(SCRIPT_PATH)


def get_config(key: str) -> dict:
    '''获取某一项配置
    参数:
        key: 要获取的设置键名
    返回:
        dict: 配置信息字典
    '''
    return(CFG.get(key))


def get_all_config() -> dict:
    '''获取全部配置
    返回:
        dict: 配置信息字典
    '''
    return(CFG)


def load_config(path: str = DEFAULT_PATH):
    '''读取并验证配置
    参数:
        [path]: 配置文件路径，默认为config.toml
    返回:
        dict: 验证过的配置字典，如果读取出错则返回None
    '''
    global CFG
    try:
        logger.debug('开始读取配置')
        raw_cfg = dict(toml.load(path))
        CFG = verify_config(raw_cfg)
        debug = os.environ.get('mode', 'release').lower()
        level = 0 if debug == 'debug' else 30
        init_logger(level)
        logger.debug('配置验证通过')

    except FileNotFoundError:
        logger.error(f'配置文件[{path}]不存在')
    except ValueError as e:
        logger.error(f'配置文件验证失败[{e}]')


def verify_config(cfg: dict) -> dict:
    '''验证配置
    参数:
        cfg: 配置字典
    返回:
        dict: 验证过的配置字典，剔除错误的和不必要的项目
    '''
    vcfg = {
        'main': {'check_update': True, 'debug': False},
        'ftqq': {'enable': False, 'skey': '', 'only_on_error': False},
        'heybox': {'channel': 'heybox_yingyongbao', 'os_type': 'Android', 'os_version': '9'},
        'account': []
    }
    main = cfg.get('main', {})
    if main and type(main) == dict:
        check_update = main.get('check_update', True)
        debug = main.get('debug', False)
        vcfg['main'] = {
            'check_update': check_update,
            'debug': debug
        }
    else:
        logger.debug('[main]节配置有误或者未配置，将使用默认配置')

    ftqq = cfg.get('ftqq', {})
    if ftqq and type(ftqq) == dict:
        enable = ftqq.get('enable', False)
        skey = ftqq.get('skey', "")
        only_on_error = ftqq.get('only_on_error', False)
        if enable and not skey:
            raise ValueError('开启了FTQQ模块，但是未指定SKEY，请检查配置文件')
        vcfg['ftqq'] = {
            'enable': enable,
            'skey': skey,
            'only_on_error': only_on_error
        }
    else:
        logger.debug('[ftqq]节配置有误或者未配置，将使用默认配置')

    heybox = cfg.get('heybox', {})
    if heybox and type(heybox) == dict:
        channel = heybox.get('channel', "heybox_yingyongbao")
        os_type = heybox.get('os_type', "Android")
        os_version = heybox.get('os_version', "9")
        vcfg['heybox'] = {
            'channel': channel,
            'os_type': os_type,
            'os_version': os_version
        }
    else:
        logger.debug('[heybox]节配置有误或者未配置，将使用默认配置')

    accounts = cfg.get('accounts', [])
    if accounts and type(accounts) == list:
        vcfg['accounts'] = []
        for i, account in enumerate(accounts, 1):
            try:
                heybox_id = int(account['heybox_id'])
                imei = account['imei']
                pkey = account['pkey']
                if heybox_id and imei and pkey:
                    vcfg['accounts'].append({
                        'heybox_id': heybox_id,
                        'imei': imei,
                        'pkey': pkey
                    })
                else:
                    raise ValueError
            except (ValueError, AttributeError):
                logger.warning(f'[*] 第{i}项账号配置有误，已忽略该项')
                logger.debug(f'[*] 配置项为{account}')

    if not vcfg['accounts']:
        logger.warning('[*] 不存在有效的账号信息')
        raise ConfigError
    return(vcfg)
