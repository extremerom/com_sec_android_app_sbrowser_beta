.class public Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;
    }
.end annotation


# instance fields
.field private final mExtraReceiverToken:I

.field private final mNativePointerKey:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;->mExtraReceiverToken:I

    iput-wide p2, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;->mNativePointerKey:J

    return-void
.end method


# virtual methods
.method public getNativePointerKey()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;->mNativePointerKey:J

    return-wide v0
.end method
