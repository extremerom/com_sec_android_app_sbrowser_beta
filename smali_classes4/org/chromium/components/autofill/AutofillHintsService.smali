.class public Lorg/chromium/components/autofill/AutofillHintsService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mBinder:Lorg/chromium/components/autofill_public/IAutofillHintsService$Stub;

.field private mCallback:Lorg/chromium/components/autofill_public/IViewTypeCallback;

.field private mUnsentViewTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill_public/ViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/components/autofill/AutofillHintsService$1;

    invoke-direct {v0, p0}, Lorg/chromium/components/autofill/AutofillHintsService$1;-><init>(Lorg/chromium/components/autofill/AutofillHintsService;)V

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillHintsService;->mBinder:Lorg/chromium/components/autofill_public/IAutofillHintsService$Stub;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/autofill/AutofillHintsService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillHintsService;->mUnsentViewTypes:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/autofill/AutofillHintsService;Lorg/chromium/components/autofill_public/IViewTypeCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillHintsService;->mCallback:Lorg/chromium/components/autofill_public/IViewTypeCallback;

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/components/autofill/AutofillHintsService;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillHintsService;->invokeOnViewTypeAvailable()V

    return-void
.end method

.method private invokeOnViewTypeAvailable()V
    .locals 2
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillHintsService;->mCallback:Lorg/chromium/components/autofill_public/IViewTypeCallback;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillHintsService;->mUnsentViewTypes:Ljava/util/List;

    invoke-interface {v0, p0}, Lorg/chromium/components/autofill_public/IViewTypeCallback;->onViewTypeAvailable(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AutofillHintsService"

    const-string v1, "onViewTypeAvailable "

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillHintsService;->mBinder:Lorg/chromium/components/autofill_public/IAutofillHintsService$Stub;

    return-object p0
.end method

.method public onViewTypeAvailable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill_public/ViewType;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillHintsService;->mUnsentViewTypes:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillHintsService;->mUnsentViewTypes:Ljava/util/List;

    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillHintsService;->mCallback:Lorg/chromium/components/autofill_public/IViewTypeCallback;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillHintsService;->invokeOnViewTypeAvailable()V

    return-void
.end method
