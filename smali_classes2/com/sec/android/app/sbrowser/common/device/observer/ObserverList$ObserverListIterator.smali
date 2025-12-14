.class Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$RewindableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObserverListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$RewindableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mIsExhausted:Z

.field private mListEndMarker:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->this$0:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mIndex:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mIsExhausted:Z

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->m(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->g(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mListEndMarker:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;-><init>(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;)V

    return-void
.end method

.method private compactListIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mIsExhausted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mIsExhausted:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->this$0:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->i(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mIndex:I

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mListEndMarker:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->this$0:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->l(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mListEndMarker:I

    if-ge v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->compactListIfNeeded()V

    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mIndex:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mListEndMarker:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->this$0:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->l(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mIndex:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mListEndMarker:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->this$0:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->mIndex:I

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->l(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;->compactListIfNeeded()V

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
