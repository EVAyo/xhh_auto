.class public Lcom/max/xiaoheihe/bean/news/NewsTagsObj;
.super Ljava/lang/Object;
.source "NewsTagsObj.java"


# instance fields
.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/max/xiaoheihe/bean/news/NewsTagObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/max/xiaoheihe/bean/news/NewsTagObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/max/xiaoheihe/bean/news/NewsTagsObj;->tags:Ljava/util/List;

    return-object v0
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/max/xiaoheihe/bean/news/NewsTagObj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    iput-object p1, p0, Lcom/max/xiaoheihe/bean/news/NewsTagsObj;->tags:Ljava/util/List;

    .line 15
    return-void
.end method
