.class public final Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams$Companion;
.super Lcom/samsung/android/vexfwk/param/VexFwkParamBaseParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/vexfwk/param/VexFwkParamBaseParcelable<",
        "Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams$Companion;",
        "Lcom/samsung/android/vexfwk/param/VexFwkParamBaseParcelable;",
        "Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;",
        "<init>",
        "()V",
        "VexFrameworkSDK_forInternalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/tts/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/samsung/android/scs/ai/sdkcommon/tts/a;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/vexfwk/param/VexFwkParamBaseParcelable;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams$Companion;-><init>()V

    return-void
.end method

.method private static final _init_$lambda$0()Landroid/os/Parcelable$Creator;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static synthetic b()Landroid/os/Parcelable$Creator;
    .locals 1

    invoke-static {}, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams$Companion;->_init_$lambda$0()Landroid/os/Parcelable$Creator;

    move-result-object v0

    return-object v0
.end method
