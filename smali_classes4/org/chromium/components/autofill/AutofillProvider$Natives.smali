.class public interface abstract Lorg/chromium/components/autofill/AutofillProvider$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/autofill/AutofillProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract detachFromJavaAutofillProvider(J)V
.end method

.method public abstract init(Lorg/chromium/components/autofill/AutofillProvider;Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method public abstract onAcceptDataListSuggestion(JLjava/lang/String;)V
.end method

.method public abstract onAutofillAvailable(J)V
.end method

.method public abstract onShowBottomSheetResult(JZZ)V
.end method

.method public abstract setAnchorViewRect(JLandroid/view/View;FFFF)V
.end method
