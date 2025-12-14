.class Lorg/chromium/components/autofill/AutofillHintsService$1;
.super Lorg/chromium/components/autofill_public/IAutofillHintsService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/autofill/AutofillHintsService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/autofill/AutofillHintsService;


# direct methods
.method public constructor <init>(Lorg/chromium/components/autofill/AutofillHintsService;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillHintsService$1;->this$0:Lorg/chromium/components/autofill/AutofillHintsService;

    invoke-direct {p0}, Lorg/chromium/components/autofill_public/IAutofillHintsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerViewTypeCallback(Lorg/chromium/components/autofill_public/IViewTypeCallback;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillHintsService$1;->this$0:Lorg/chromium/components/autofill/AutofillHintsService;

    invoke-static {v0, p1}, Lorg/chromium/components/autofill/AutofillHintsService;->b(Lorg/chromium/components/autofill/AutofillHintsService;Lorg/chromium/components/autofill_public/IViewTypeCallback;)V

    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillHintsService$1;->this$0:Lorg/chromium/components/autofill/AutofillHintsService;

    invoke-static {p1}, Lorg/chromium/components/autofill/AutofillHintsService;->a(Lorg/chromium/components/autofill/AutofillHintsService;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillHintsService$1;->this$0:Lorg/chromium/components/autofill/AutofillHintsService;

    invoke-static {p0}, Lorg/chromium/components/autofill/AutofillHintsService;->c(Lorg/chromium/components/autofill/AutofillHintsService;)V

    :cond_0
    return-void
.end method
