.class public final synthetic LH9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LH9/c;->a:I

    iput-object p2, p0, LH9/c;->b:Ljava/lang/Object;

    iput-object p3, p0, LH9/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, LH9/c;->a:I

    iput-object p1, p0, LH9/c;->c:Ljava/lang/Object;

    iput-object p2, p0, LH9/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LH9/c;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/vexfwk/sdk/bokeheffect/VexFwkPortraitBokehEffect;->e(Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;Ljava/lang/String;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ldb/r;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/engine/LttImageTranslationEngine;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/engine/LttImageTranslationEngine;->a(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/engine/LttImageTranslationEngine;Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;Ldb/r;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ldb/r;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Ltb/w;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->b(Ltb/w;Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;Ldb/r;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ldb/r;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelperImpl;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelperImpl;->b(Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelperImpl;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;Ldb/r;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->e(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/EditTextPreference;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->k(Landroidx/preference/EditTextPreference;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Ljava/lang/Long;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/Preference;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->l(Landroidx/preference/Preference;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Ljava/lang/Integer;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, LS2/a;

    iget-object v0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;

    iget-object p0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->g(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, LS2/a;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->c(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, LS2/a;

    iget-object v0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;

    iget-object p0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->d(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, LS2/a;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->c(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;LS2/a;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, LS2/a;

    iget-object v0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->f(Ljava/lang/String;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;Ljava/lang/String;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/samsung/android/sdk/scs/base/tasks/Task;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->a(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;Lcom/samsung/android/sdk/scs/base/tasks/Task;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/vexfwk/docscan/VexFwkDocRefineModes$Companion$ColorFilterType;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/vexfwk/docscan/VexFwkDocRefineModes$Companion$EnhancementMode;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocRefiner;->b(Lcom/samsung/android/vexfwk/docscan/VexFwkDocRefineModes$Companion$ColorFilterType;Lcom/samsung/android/vexfwk/docscan/VexFwkDocRefineModes$Companion$EnhancementMode;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/vexfwk/param/VexFwkDocumentCorners;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/vexfwk/docscan/VexFwkDocDewarpModes$Companion$DewarpMode;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDewarper;->c(Lcom/samsung/android/vexfwk/param/VexFwkDocumentCorners;Lcom/samsung/android/vexfwk/docscan/VexFwkDocDewarpModes$Companion$DewarpMode;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, LH9/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, LH9/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;->d(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
