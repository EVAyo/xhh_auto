.class final Lio/reactivex/internal/operators/maybe/e$a;
.super Ljava/lang/Object;
.source "MaybeDetach.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field b:Lio/reactivex/disposables/b;


# direct methods
.method constructor <init>(Lio/reactivex/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/e$a;->a:Lio/reactivex/q;

    .line 44
    return-void
.end method


# virtual methods
.method public A_()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->a:Lio/reactivex/q;

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->b:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->A_()V

    .line 50
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->a:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->b:Lio/reactivex/disposables/b;

    .line 51
    return-void
.end method

.method public a(Lio/reactivex/disposables/b;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->b:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/e$a;->b:Lio/reactivex/disposables/b;

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->a(Lio/reactivex/disposables/b;)V

    .line 65
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->a:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->b:Lio/reactivex/disposables/b;

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->a:Lio/reactivex/q;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1}, Lio/reactivex/q;->a(Ljava/lang/Throwable;)V

    .line 83
    :cond_0
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->a:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->b:Lio/reactivex/disposables/b;

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->a:Lio/reactivex/q;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1}, Lio/reactivex/q;->b_(Ljava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method

.method public k_()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->a:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->b:Lio/reactivex/disposables/b;

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->a:Lio/reactivex/q;

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lio/reactivex/q;->k_()V

    .line 92
    :cond_0
    return-void
.end method

.method public u_()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/e$a;->b:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->u_()Z

    move-result v0

    return v0
.end method
