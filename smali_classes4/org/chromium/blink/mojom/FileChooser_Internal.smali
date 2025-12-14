.class Lorg/chromium/blink/mojom/FileChooser_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileChooser_Internal$FileChooserEnumerateChosenDirectoryResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileChooser_Internal$FileChooserEnumerateChosenDirectoryResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileChooser_Internal$FileChooserEnumerateChosenDirectoryResponseParams;,
        Lorg/chromium/blink/mojom/FileChooser_Internal$FileChooserEnumerateChosenDirectoryParams;,
        Lorg/chromium/blink/mojom/FileChooser_Internal$FileChooserOpenFileChooserResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileChooser_Internal$FileChooserOpenFileChooserResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileChooser_Internal$FileChooserOpenFileChooserResponseParams;,
        Lorg/chromium/blink/mojom/FileChooser_Internal$FileChooserOpenFileChooserParams;,
        Lorg/chromium/blink/mojom/FileChooser_Internal$Stub;,
        Lorg/chromium/blink/mojom/FileChooser_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileChooser;",
            "Lorg/chromium/blink/mojom/FileChooser$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FileChooser_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileChooser_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/FileChooser_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
