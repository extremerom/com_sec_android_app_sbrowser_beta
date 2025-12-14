.class Lorg/chromium/content/browser/ScreenOrientationProviderImpl$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ScreenOrientationProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lorg/chromium/content/browser/ScreenOrientationProviderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;

    invoke-direct {v0}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$Holder;->sInstance:Lorg/chromium/content/browser/ScreenOrientationProviderImpl;

    return-void
.end method

.method public static bridge synthetic a()Lorg/chromium/content/browser/ScreenOrientationProviderImpl;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$Holder;->sInstance:Lorg/chromium/content/browser/ScreenOrientationProviderImpl;

    return-object v0
.end method
