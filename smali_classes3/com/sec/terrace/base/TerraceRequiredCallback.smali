.class public Lcom/sec/terrace/base/TerraceRequiredCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/base/TerraceCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/terrace/base/TerraceCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sec/terrace/base/TerraceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/terrace/base/TerraceCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/terrace/base/TerraceCallback;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/base/TerraceCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/base/TerraceCallback<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/base/TerraceRequiredCallback;->mCallback:Lcom/sec/terrace/base/TerraceCallback;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/base/TerraceRequiredCallback;->mCallback:Lcom/sec/terrace/base/TerraceCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/terrace/base/TerraceCallback;->onResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/base/TerraceRequiredCallback;->mCallback:Lcom/sec/terrace/base/TerraceCallback;

    return-void
.end method
