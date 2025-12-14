.class final Lorg/chromium/ui/base/DeviceInput$LazyInit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/DeviceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyInit"
.end annotation


# static fields
.field public static final sInstance:Lorg/chromium/ui/base/DeviceInput;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/ui/base/DeviceInput;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/ui/base/DeviceInput;-><init>(I)V

    sput-object v0, Lorg/chromium/ui/base/DeviceInput$LazyInit;->sInstance:Lorg/chromium/ui/base/DeviceInput;

    return-void
.end method
