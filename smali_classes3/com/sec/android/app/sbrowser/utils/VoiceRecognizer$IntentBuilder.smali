.class Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIntent:Landroid/content/Intent;

.field private final mIsSviEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isSviEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->mIsSviEnabled:Z

    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p1, "samsung.honeyboard.honeyvoice.action.RECOGNIZE_SPEECH"

    goto :goto_0

    :cond_0
    const-string p1, "android.speech.action.RECOGNIZE_SPEECH"

    :goto_0
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private languageModelFreeForm()Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method private languageModelWebSearch()Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "calling_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.WEB_SEARCH_ONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public languageModel(Z)Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->mIsSviEnabled:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->languageModelWebSearch()Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->languageModelFreeForm()Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;

    move-result-object p0

    return-object p0
.end method
