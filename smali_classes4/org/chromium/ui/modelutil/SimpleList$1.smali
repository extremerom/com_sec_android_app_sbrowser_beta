.class Lorg/chromium/ui/modelutil/SimpleList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mI:I

.field final synthetic this$0:Lorg/chromium/ui/modelutil/SimpleList;


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/chromium/ui/modelutil/SimpleList$1;->mI:I

    iget-object p0, p0, Lorg/chromium/ui/modelutil/SimpleList$1;->this$0:Lorg/chromium/ui/modelutil/SimpleList;

    invoke-interface {p0}, Lorg/chromium/ui/modelutil/SimpleList;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/modelutil/SimpleList$1;->this$0:Lorg/chromium/ui/modelutil/SimpleList;

    iget v1, p0, Lorg/chromium/ui/modelutil/SimpleList$1;->mI:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/chromium/ui/modelutil/SimpleList$1;->mI:I

    invoke-interface {v0, v1}, Lorg/chromium/ui/modelutil/SimpleList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
