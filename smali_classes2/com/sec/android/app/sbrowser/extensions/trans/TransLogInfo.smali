.class public Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPageTrans:Z

.field private mPageTransCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->mPageTrans:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->mPageTransCount:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->mPageTrans:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->mPageTransCount:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getPageTrans()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->mPageTrans:Z

    return p0
.end method

.method public getPageTransCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->mPageTransCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public updatePageTrans(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->mPageTrans:Z

    return-void
.end method

.method public updatePageTransCount(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->mPageTransCount:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->mPageTransCount:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->mPageTransCount:Ljava/lang/Integer;

    :goto_0
    return-void
.end method
