.class Lorg/chromium/content/browser/TracingControllerAndroidImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;


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

.method public static get()Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/TracingControllerAndroidImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/TracingControllerAndroidImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDefaultCategories(Lorg/chromium/content/browser/TracingControllerAndroidImpl;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, LJ/N;->My9pNx9O(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getKnownCategoriesAsync(JLorg/chromium/content/browser/TracingControllerAndroidImpl;Lorg/chromium/base/Callback;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MdRNuqnW(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public init(Lorg/chromium/content/browser/TracingControllerAndroidImpl;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MWlLnA$6(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public startTracing(JLorg/chromium/content/browser/TracingControllerAndroidImpl;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MZYMIGWv(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method public stopTracing(JLorg/chromium/content/browser/TracingControllerAndroidImpl;Ljava/lang/String;ZZLorg/chromium/base/Callback;)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->M$HKWu8q(JLjava/lang/Object;Ljava/lang/Object;ZZLjava/lang/Object;)V

    return-void
.end method
