.class Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity$16;
.super Ljava/lang/Object;
.source "RegisterOrLoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity;


# direct methods
.method constructor <init>(Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity$16;->a:Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 451
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity$16;->a:Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity;

    invoke-static {v0}, Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity;->m(Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 458
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity$16;->a:Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity;

    invoke-static {v0}, Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity;->m(Lcom/max/xiaoheihe/module/account/RegisterOrLoginActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 442
    return-void
.end method
