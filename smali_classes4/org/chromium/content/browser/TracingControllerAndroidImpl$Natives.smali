.class interface abstract Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/TracingControllerAndroidImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract getDefaultCategories(Lorg/chromium/content/browser/TracingControllerAndroidImpl;)Ljava/lang/String;
.end method

.method public abstract getKnownCategoriesAsync(JLorg/chromium/content/browser/TracingControllerAndroidImpl;Lorg/chromium/base/Callback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/chromium/content/browser/TracingControllerAndroidImpl;",
            "Lorg/chromium/base/Callback<",
            "[",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract init(Lorg/chromium/content/browser/TracingControllerAndroidImpl;)J
.end method

.method public abstract startTracing(JLorg/chromium/content/browser/TracingControllerAndroidImpl;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract stopTracing(JLorg/chromium/content/browser/TracingControllerAndroidImpl;Ljava/lang/String;ZZLorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/chromium/content/browser/TracingControllerAndroidImpl;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
