.class Lcom/max/xiaoheihe/module/account/QuestCenterActivity$11;
.super Ljava/lang/Object;
.source "QuestCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/max/xiaoheihe/module/account/QuestCenterActivity;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/max/xiaoheihe/module/account/QuestCenterActivity;


# direct methods
.method constructor <init>(Lcom/max/xiaoheihe/module/account/QuestCenterActivity;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/max/xiaoheihe/module/account/QuestCenterActivity$11;->a:Lcom/max/xiaoheihe/module/account/QuestCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 444
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/max/xiaoheihe/module/account/QuestCenterActivity$11;->a:Lcom/max/xiaoheihe/module/account/QuestCenterActivity;

    invoke-static {v1}, Lcom/max/xiaoheihe/module/account/QuestCenterActivity;->y(Lcom/max/xiaoheihe/module/account/QuestCenterActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/max/xiaoheihe/module/webview/WebActionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    const-string v1, "title"

    iget-object v2, p0, Lcom/max/xiaoheihe/module/account/QuestCenterActivity$11;->a:Lcom/max/xiaoheihe/module/account/QuestCenterActivity;

    invoke-static {v2}, Lcom/max/xiaoheihe/module/account/QuestCenterActivity;->z(Lcom/max/xiaoheihe/module/account/QuestCenterActivity;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09079b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v1, "pageurl"

    sget-object v2, Lcom/max/xiaoheihe/a/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    iget-object v1, p0, Lcom/max/xiaoheihe/module/account/QuestCenterActivity$11;->a:Lcom/max/xiaoheihe/module/account/QuestCenterActivity;

    invoke-static {v1}, Lcom/max/xiaoheihe/module/account/QuestCenterActivity;->A(Lcom/max/xiaoheihe/module/account/QuestCenterActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 448
    return-void
.end method
