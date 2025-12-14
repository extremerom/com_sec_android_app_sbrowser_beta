.class Lorg/chromium/content/browser/JavascriptInjectorImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/JavascriptInjectorImpl$Natives;


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

.method public static get()Lorg/chromium/content/browser/JavascriptInjectorImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/JavascriptInjectorImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/JavascriptInjectorImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addInterface(JLorg/chromium/content/browser/JavascriptInjectorImpl;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->Mpa5DCUY(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public init(Lorg/chromium/content/browser/JavascriptInjectorImpl;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/Object;)J
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MaMB25XA(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public removeInterface(JLorg/chromium/content/browser/JavascriptInjectorImpl;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M5J62vXh(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
