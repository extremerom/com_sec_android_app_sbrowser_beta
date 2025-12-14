.class public Lorg/chromium/content/common/InputTransferTokenWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/chromium/content/common/InputTransferTokenWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mToken:Landroid/window/InputTransferToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/content/common/InputTransferTokenWrapper$1;

    invoke-direct {v0}, Lorg/chromium/content/common/InputTransferTokenWrapper$1;-><init>()V

    sput-object v0, Lorg/chromium/content/common/InputTransferTokenWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/window/InputTransferToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/common/InputTransferTokenWrapper;->mToken:Landroid/window/InputTransferToken;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInputTransferToken()Landroid/window/InputTransferToken;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/common/InputTransferTokenWrapper;->mToken:Landroid/window/InputTransferToken;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lorg/chromium/content/common/InputTransferTokenWrapper;->mToken:Landroid/window/InputTransferToken;

    invoke-static {p0, p1, p2}, LA2/e;->B(Landroid/window/InputTransferToken;Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method
