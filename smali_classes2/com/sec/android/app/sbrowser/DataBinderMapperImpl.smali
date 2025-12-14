.class public Lcom/sec/android/app/sbrowser/DataBinderMapperImpl;
.super Landroidx/databinding/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/DataBinderMapperImpl$InnerLayoutIdLookup;,
        Lcom/sec/android/app/sbrowser/DataBinderMapperImpl$InnerBrLookup;
    }
.end annotation


# static fields
.field private static final INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    const v2, 0x7f0e0584

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e080e

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e0811

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e0812

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e0816

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e0819

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e0820

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e08b3

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0e08b4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collectDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/databinding/d;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;

    invoke-direct {v0}, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/DataBinderMapperImpl;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/DataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDataBinder(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/k;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-lez p0, :cond_c

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_b

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "layout/split_view_container_v2_0"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/SplitViewContainerV2BindingImpl;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/databinding/SplitViewContainerV2BindingImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for split_view_container_v2 is invalid. Received: "

    invoke-static {p3, p1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const-string p0, "layout/split_view_container_0"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/SplitViewContainerBindingImpl;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/databinding/SplitViewContainerBindingImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for split_view_container is invalid. Received: "

    invoke-static {p3, p1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    const-string p0, "layout-land/search_widget_settings_fragment_0"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBindingLandImpl;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBindingLandImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p0

    :cond_2
    const-string p0, "layout/search_widget_settings_fragment_0"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBindingImpl;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBindingImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for search_widget_settings_fragment is invalid. Received: "

    invoke-static {p3, p1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    const-string p0, "layout/search_widget_new_settings_fragment_0"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingImpl;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p0

    :cond_4
    const-string p0, "layout-land/search_widget_new_settings_fragment_0"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingLandImpl;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingLandImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for search_widget_new_settings_fragment is invalid. Received: "

    invoke-static {p3, p1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    const-string p0, "layout/search_history_item_0"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBindingImpl;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBindingImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for search_history_item is invalid. Received: "

    invoke-static {p3, p1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    const-string p0, "layout/search_engine_button_0"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBindingImpl;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBindingImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for search_engine_button is invalid. Received: "

    invoke-static {p3, p1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    const-string p0, "layout/search_bar_0"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/databinding/SearchBarBindingImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for search_bar is invalid. Received: "

    invoke-static {p3, p1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    const-string p0, "layout/scanning_effect_layout_0"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/ScanningEffectLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/databinding/ScanningEffectLayoutBindingImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for scanning_effect_layout is invalid. Received: "

    invoke-static {p3, p1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    const-string p0, "layout/processing_light_effect_view_0"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/ProcessingLightEffectViewBindingImpl;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/databinding/ProcessingLightEffectViewBindingImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag for processing_light_effect_view is invalid. Received: "

    invoke-static {p3, p1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "view must have a tag"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public getDataBinder(Landroidx/databinding/e;[Landroid/view/View;I)Landroidx/databinding/k;
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "view must have a tag"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object p0
.end method
