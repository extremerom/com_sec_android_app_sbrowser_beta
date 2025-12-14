.class public Lorg/chromium/components/autofill/AutofillProviderJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/autofill/AutofillProvider$Natives;


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

.method public static get()Lorg/chromium/components/autofill/AutofillProvider$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/autofill/AutofillProviderJni;

    invoke-direct {v0}, Lorg/chromium/components/autofill/AutofillProviderJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public detachFromJavaAutofillProvider(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M5T72OHd(J)V

    return-void
.end method

.method public init(Lorg/chromium/components/autofill/AutofillProvider;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MP6qv$HX(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onAcceptDataListSuggestion(JLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MMueBMxQ(JLjava/lang/Object;)V

    return-void
.end method

.method public onAutofillAvailable(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MxVH2h8w(J)V

    return-void
.end method

.method public onShowBottomSheetResult(JZZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MTiaovvJ(JZZ)V

    return-void
.end method

.method public setAnchorViewRect(JLandroid/view/View;FFFF)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->M3yksvyh(JLjava/lang/Object;FFFF)V

    return-void
.end method
