.class public Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mISO2LanguageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNameVariantMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLanguage:Ljava/lang/String;

.field private mSupportedTtsVoices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;",
            ">;"
        }
    .end annotation
.end field

.field private mTTS:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    return-void
.end method

.method private displayVoiceTypeList()V
    .locals 5

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mNameVariantMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, La9/d;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4, v0, v1}, La9/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setDivideVisibility(Z)V

    :cond_0
    return-void
.end method

.method private getISO2Language(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mISO2LanguageMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method private getLocalizedPreviewText(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->initializeISOLanguageMap()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->getISO2Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "getLocalizedPreviewText(): country -> "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ReadAloudVoiceTypeFragment"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140087

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPreferenceClicked()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "voice_style_preference_clicked"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedVoicePreferenceName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mSelectedLanguage:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->getVoiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method private getSelectedVoiceValue(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->c(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->a(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->b(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSupportedVoiceTypes()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mSelectedLanguage:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mSupportedTtsVoices:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mNameVariantMap:Ljava/util/Map;

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->createAvailableVoiceCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->isPersonalTTSVariant(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "locale"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "variant"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ""

    const/4 v5, -0x1

    if-eq v1, v5, :cond_4

    :try_start_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    move-object v1, v4

    :goto_1
    if-eq v2, v5, :cond_5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v4

    :goto_2
    if-eq v3, v5, :cond_6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->createLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->checkVoiceAvailable(Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mSupportedTtsVoices:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mSupportedTtsVoices:Ljava/util/Map;

    new-instance v5, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v2, v4, v6}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mNameVariantMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mNameVariantMap:Ljava/util/Map;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :goto_4
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    const-string v0, "getSupportedVoiceTypes() - "

    const-string v1, "ReadAloudVoiceTypeFragment"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->lambda$initializeISOLanguageMap$2(Ljava/lang/String;)V

    return-void
.end method

.method private initPreference()V
    .locals 4

    new-instance v0, Lr/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1502d6

    invoke-direct {v0, v1, v2}, Lr/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw2/F;->a(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140bb3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-direct {v3, v0}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setTopMarginEnabled(Z)V

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setMovementMethod(Z)V

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->getSupportedVoiceTypes()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->displayVoiceTypeList()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->setCheckVoicePreference(Z)V

    return-void
.end method

.method private initializeISOLanguageMap()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mISO2LanguageMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mISO2LanguageMap:Ljava/util/Map;

    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/z;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/z;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->lambda$previewVoice$1(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;I)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;Landroidx/preference/PreferenceScreen;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->lambda$displayVoiceTypeList$0(Landroidx/preference/PreferenceScreen;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$displayVoiceTypeList$0(Landroidx/preference/PreferenceScreen;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mNameVariantMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mSupportedTtsVoices:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "displayVoiceTypeList(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mSelectedLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->b(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReadAloudVoiceTypeFragment"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->b(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v1, v2, v0, p3, p0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializeISOLanguageMap$2(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mISO2LanguageMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "initializeISOLanguageMap(): cannot find "

    const-string v0, "ReadAloudVoiceTypeFragment"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$previewVoice$1(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->startPreview(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)V

    return-void
.end method

.method private previewVoice(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->stopPreview()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mTTS:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/A;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/settings/A;-><init>(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;-><init>(Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getReadAloudSpeechRate()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;->setSpeechRate(F)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$Builder;->build()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mTTS:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->startPreview(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)V

    :goto_0
    return-void
.end method

.method private setCheckVoicePreference(Z)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->getSelectedVoicePreferenceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "setCheckVoicePreference(): "

    const-string v0, "ReadAloudVoiceTypeFragment"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private startPreview(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mTTS:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->a(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->c(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->setVoice(Ljava/util/Locale;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mTTS:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->a(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->getLocalizedPreviewText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    return-void
.end method

.method private stopPreview()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mTTS:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->stop()I

    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->getPreferenceClicked()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mSelectedLanguage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->initPreference()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->stopPreview()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mTTS:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mTTS:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->setCheckVoicePreference(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mSupportedTtsVoices:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->previewVoice(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mSelectedLanguage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->getSelectedVoiceValue(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->setVoiceName(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->setCheckVoicePreference(Z)V

    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->setCheckVoicePreference(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->mSelectedLanguage:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
