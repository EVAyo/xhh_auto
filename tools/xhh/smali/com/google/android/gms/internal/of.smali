.class final Lcom/google/android/gms/internal/of;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzcek;

.field private synthetic b:Lcom/google/android/gms/internal/oa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/oa;Lcom/google/android/gms/internal/zzcek;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/of;->b:Lcom/google/android/gms/internal/oa;

    iput-object p2, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/zzcek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->b:Lcom/google/android/gms/internal/oa;

    invoke-static {v0}, Lcom/google/android/gms/internal/oa;->a(Lcom/google/android/gms/internal/oa;)Lcom/google/android/gms/internal/nv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nv;->G()V

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->b:Lcom/google/android/gms/internal/oa;

    invoke-static {v0}, Lcom/google/android/gms/internal/oa;->a(Lcom/google/android/gms/internal/oa;)Lcom/google/android/gms/internal/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/zzcek;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nv;->a(Lcom/google/android/gms/internal/zzcek;)V

    return-void
.end method
