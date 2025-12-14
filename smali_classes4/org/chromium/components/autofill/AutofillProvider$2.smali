.class Lorg/chromium/components/autofill/AutofillProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/autofill/AutofillDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/autofill/AutofillProvider;->showDatalistPopup([Ljava/lang/String;[Ljava/lang/String;Landroid/graphics/RectF;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/autofill/AutofillProvider;


# direct methods
.method public constructor <init>(Lorg/chromium/components/autofill/AutofillProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProvider$2;->this$0:Lorg/chromium/components/autofill/AutofillProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accessibilityFocusCleared()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider$2;->this$0:Lorg/chromium/components/autofill/AutofillProvider;

    invoke-static {p0}, Lorg/chromium/components/autofill/AutofillProvider;->e(Lorg/chromium/components/autofill/AutofillProvider;)Lorg/chromium/content_public/browser/WebContentsAccessibility;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->onAutofillPopupAccessibilityFocusCleared()V

    return-void
.end method

.method public deleteSuggestion(I)V
    .locals 0

    return-void
.end method

.method public dismissed()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider$2;->this$0:Lorg/chromium/components/autofill/AutofillProvider;

    invoke-static {p0}, Lorg/chromium/components/autofill/AutofillProvider;->f(Lorg/chromium/components/autofill/AutofillProvider;)V

    return-void
.end method

.method public suggestionSelected(I)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProvider$2;->this$0:Lorg/chromium/components/autofill/AutofillProvider;

    invoke-static {p0}, Lorg/chromium/components/autofill/AutofillProvider;->c(Lorg/chromium/components/autofill/AutofillProvider;)[Lorg/chromium/components/autofill/AutofillSuggestion;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/chromium/components/autofill/AutofillSuggestion;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/chromium/components/autofill/AutofillProvider;->g(Lorg/chromium/components/autofill/AutofillProvider;Ljava/lang/String;)V

    return-void
.end method
