.class Lorg/chromium/base/DeviceInfoJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/DeviceInfo$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/base/DeviceInfo$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/DeviceInfoJni;

    invoke-direct {v0}, Lorg/chromium/base/DeviceInfoJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public fillFields(Ljava/lang/String;ZZZZI)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MFWeJGQZ(Ljava/lang/Object;ZZZZI)V

    return-void
.end method
