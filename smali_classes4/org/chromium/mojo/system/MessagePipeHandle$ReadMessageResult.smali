.class public Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/MessagePipeHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadMessageResult"
.end annotation


# instance fields
.field public mData:[B

.field public mHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/mojo/system/UntypedHandle;",
            ">;"
        }
    .end annotation
.end field

.field public mRawHandles:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
