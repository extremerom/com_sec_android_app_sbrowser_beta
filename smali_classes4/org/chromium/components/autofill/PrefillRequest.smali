.class Lorg/chromium/components/autofill/PrefillRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PrefillRequest"


# instance fields
.field private final mForm:Lorg/chromium/components/autofill/FormData;


# direct methods
.method public constructor <init>(Lorg/chromium/components/autofill/FormData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/autofill/PrefillRequest;->mForm:Lorg/chromium/components/autofill/FormData;

    return-void
.end method


# virtual methods
.method public getForm()Lorg/chromium/components/autofill/FormData;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/PrefillRequest;->mForm:Lorg/chromium/components/autofill/FormData;

    return-object p0
.end method

.method public getPrefillHints()Landroid/util/SparseArray;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/VirtualViewFillInfo;",
            ">;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/chromium/components/autofill/AndroidAutofillFeatures;->ANDROID_AUTOFILL_BOTTOM_SHEET_WORKAROUND:Lorg/chromium/components/autofill/AndroidAutofillFeatures;

    invoke-virtual {v0}, Lorg/chromium/base/Features;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/components/autofill/SparseArrayWithWorkaround;

    invoke-direct {v0}, Lorg/chromium/components/autofill/SparseArrayWithWorkaround;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/chromium/components/autofill/PrefillRequest;->mForm:Lorg/chromium/components/autofill/FormData;

    iget-object v2, v2, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/chromium/components/autofill/PrefillRequest;->mForm:Lorg/chromium/components/autofill/FormData;

    iget v2, v2, Lorg/chromium/components/autofill/FormData;->mSessionId:I

    invoke-static {v2, v1}, Lorg/chromium/components/autofill/FormData;->toFieldVirtualId(IS)I

    move-result v2

    iget-object v3, p0, Lorg/chromium/components/autofill/PrefillRequest;->mForm:Lorg/chromium/components/autofill/FormData;

    iget-object v3, v3, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/components/autofill/FormFieldData;

    invoke-virtual {v3}, Lorg/chromium/components/autofill/FormFieldData;->getServerPredictionsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/chromium/components/autofill/b;->p()Landroid/view/autofill/VirtualViewFillInfo$Builder;

    move-result-object v4

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, LA2/q;->k(Landroid/view/autofill/VirtualViewFillInfo$Builder;[Ljava/lang/String;)Landroid/view/autofill/VirtualViewFillInfo$Builder;

    move-result-object v3

    invoke-static {v3}, LA2/q;->l(Landroid/view/autofill/VirtualViewFillInfo$Builder;)Landroid/view/autofill/VirtualViewFillInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_1

    :cond_1
    return-object v0
.end method
