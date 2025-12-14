.class public final Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtraReceiverToken:I

.field private mNativePointerKey:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNativePointer(J)Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;->mNativePointerKey:J

    return-object p0
.end method

.method public addReceiver(I)Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;->mExtraReceiverToken:I

    return-object p0
.end method

.method public build()Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;
    .locals 4

    new-instance v0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;

    iget v1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;->mExtraReceiverToken:I

    iget-wide v2, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;->mNativePointerKey:J

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;-><init>(IJ)V

    return-object v0
.end method
