.class Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelLoadAdaptationResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelLoadAdaptationResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelLoadAdaptationResponseParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelLoadAdaptationParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelDetectLanguageResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelDetectLanguageResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelDetectLanguageResponseParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelDetectLanguageParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelClassifyTextSafetyResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelClassifyTextSafetyResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelClassifyTextSafetyResponseParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelClassifyTextSafetyParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelStartSessionParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$Stub;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModel;",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModel$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$1;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
