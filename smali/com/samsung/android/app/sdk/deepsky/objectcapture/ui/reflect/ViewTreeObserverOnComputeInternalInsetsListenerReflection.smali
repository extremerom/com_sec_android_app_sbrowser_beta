.class public Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverOnComputeInternalInsetsListenerReflection;
.super Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;
.source "SourceFile"


# static fields
.field private static final ORIGINAL_CLASS_NAME:Ljava/lang/String; = "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onComputeInternalInsets"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverOnComputeInternalInsetsListenerReflection;->onComputeInternalInsets(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onComputeInternalInsets(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
