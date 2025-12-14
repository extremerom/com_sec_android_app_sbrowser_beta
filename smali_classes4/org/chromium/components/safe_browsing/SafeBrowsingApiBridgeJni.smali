.class public Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$Natives;


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

.method public static get()Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridgeJni;

    invoke-direct {v0}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onSafeBrowsingApiHandlerAvailable()V
    .locals 0

    invoke-static {}, LJ/N;->M6HxHHt5()V

    return-void
.end method

.method public onUrlCheckDoneBySafeBrowsingApi(JII[IIJ)V
    .locals 0

    invoke-static/range {p1 .. p8}, LJ/N;->MSkFYnu9(JIILjava/lang/Object;IJ)V

    return-void
.end method
