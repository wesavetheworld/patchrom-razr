.class Landroid/net/http/RequestQueue$SyncFeeder;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestFeeder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncFeeder"
.end annotation


# instance fields
.field private mRequest:Landroid/net/http/Request;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 378
    return-void
.end method


# virtual methods
.method public getRequest()Landroid/net/http/Request;
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    .line 381
    .local v0, r:Landroid/net/http/Request;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    .line 382
    return-object v0
.end method

.method public getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;
    .locals 1
    .parameter "host"

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/net/http/RequestQueue$SyncFeeder;->getRequest()Landroid/net/http/Request;

    move-result-object v0

    return-object v0
.end method

.method public haveRequest(Lorg/apache/http/HttpHost;)Z
    .locals 1
    .parameter "host"

    .prologue
    .line 388
    iget-object v0, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requeueRequest(Landroid/net/http/Request;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 391
    iput-object p1, p0, Landroid/net/http/RequestQueue$SyncFeeder;->mRequest:Landroid/net/http/Request;

    .line 392
    return-void
.end method
