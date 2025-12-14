.class public Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;

.field private mPending:I


# direct methods
.method public constructor <init>(ILcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;->mPending:I

    iput-object p2, p0, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;->mCallback:Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;->lambda$onResult$0(Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;Ljava/lang/Integer;)V

    return-void
.end method

.method public static commonMimeType([Lorg/chromium/webshare/mojom/SharedFile;)Ljava/lang/String;
    .locals 10

    const-string v0, "*/*"

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    aget-object v2, p0, v1

    iget-object v2, v2, Lorg/chromium/webshare/mojom/SharedFile;->blob:Lorg/chromium/blink/mojom/SerializedBlob;

    iget-object v2, v2, Lorg/chromium/blink/mojom/SerializedBlob;->contentType:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    return-object v0

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    :goto_0
    array-length v7, p0

    if-ge v6, v7, :cond_5

    aget-object v7, p0, v6

    iget-object v7, v7, Lorg/chromium/webshare/mojom/SharedFile;->blob:Lorg/chromium/blink/mojom/SerializedBlob;

    iget-object v7, v7, Lorg/chromium/blink/mojom/SerializedBlob;->contentType:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-eq v8, v5, :cond_2

    return-object v0

    :cond_2
    aget-object v8, v7, v1

    aget-object v9, v2, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    return-object v0

    :cond_3
    aget-object v7, v7, v4

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "*"

    aput-object v7, v2, v4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v2, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    return-object v0
.end method

.method private static synthetic lambda$onResult$0(Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;->didFinishCollate(Z)V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;->mCallback:Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;->mPending:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;->mPending:I

    if-lez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;->mCallback:Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;->mCallback:Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;

    new-instance p0, Lcom/sec/terrace/browser/webshare/c;

    invoke-direct {p0, v0, p1}, Lcom/sec/terrace/browser/webshare/c;-><init>(Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;Ljava/lang/Integer;)V

    const/4 p1, 0x7

    invoke-static {p1, p0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;->onResult(Ljava/lang/Integer;)V

    return-void
.end method
