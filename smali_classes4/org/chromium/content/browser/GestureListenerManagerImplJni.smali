.class Lorg/chromium/content/browser/GestureListenerManagerImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/GestureListenerManagerImpl$Natives;


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

.method public static get()Lorg/chromium/content/browser/GestureListenerManagerImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/GestureListenerManagerImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/GestureListenerManagerImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public init(Lorg/chromium/content/browser/GestureListenerManagerImpl;Lorg/chromium/content/browser/webcontents/WebContentsImpl;)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MefCIE9S(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public resetGestureDetection(JLorg/chromium/content/browser/GestureListenerManagerImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MMR0DKoy(JLjava/lang/Object;)V

    return-void
.end method

.method public setRootScrollOffsetUpdateFrequency(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MZSUpd4B(JI)V

    return-void
.end method
