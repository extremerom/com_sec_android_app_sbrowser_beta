.class public Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACCESSIBILITY_SPANNABLE_CREATION_TIME:Ljava/lang/String; = "Accessibility.Android.Performance.SpannableCreationTime2"

.field public static final EXTRAS_DATA_REQUEST_IMAGE_DATA_KEY:Ljava/lang/String; = "AccessibilityNodeInfo.requestImageData"

.field public static final EXTRAS_KEY_BRAILLE_LABEL:Ljava/lang/String; = "AccessibilityNodeInfo.brailleLabel"

.field public static final EXTRAS_KEY_BRAILLE_ROLE_DESCRIPTION:Ljava/lang/String; = "AccessibilityNodeInfo.brailleRoleDescription"

.field public static final EXTRAS_KEY_CHROME_ROLE:Ljava/lang/String; = "AccessibilityNodeInfo.chromeRole"

.field public static final EXTRAS_KEY_CLICKABLE_SCORE:Ljava/lang/String; = "AccessibilityNodeInfo.clickableScore"

.field public static final EXTRAS_KEY_CSS_DISPLAY:Ljava/lang/String; = "AccessibilityNodeInfo.cssDisplay"

.field public static final EXTRAS_KEY_HAS_IMAGE:Ljava/lang/String; = "AccessibilityNodeInfo.hasImage"

.field public static final EXTRAS_KEY_HINT:Ljava/lang/String; = "AccessibilityNodeInfo.hint"

.field public static final EXTRAS_KEY_IMAGE_DATA:Ljava/lang/String; = "AccessibilityNodeInfo.imageData"

.field public static final EXTRAS_KEY_OFFSCREEN:Ljava/lang/String; = "AccessibilityNodeInfo.offscreen"

.field public static final EXTRAS_KEY_PAGE_ABSOLUTE_HEIGHT:Ljava/lang/String; = "AccessibilityNodeInfo.pageAbsoluteHeight"

.field public static final EXTRAS_KEY_PAGE_ABSOLUTE_LEFT:Ljava/lang/String; = "AccessibilityNodeInfo.pageAbsoluteLeft"

.field public static final EXTRAS_KEY_PAGE_ABSOLUTE_TOP:Ljava/lang/String; = "AccessibilityNodeInfo.pageAbsoluteTop"

.field public static final EXTRAS_KEY_PAGE_ABSOLUTE_WIDTH:Ljava/lang/String; = "AccessibilityNodeInfo.pageAbsoluteWidth"

.field public static final EXTRAS_KEY_ROLE_DESCRIPTION:Ljava/lang/String; = "AccessibilityNodeInfo.roleDescription"

.field public static final EXTRAS_KEY_SUPPORTED_ELEMENTS:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING_VALUES"

.field public static final EXTRAS_KEY_TARGET_URL:Ljava/lang/String; = "AccessibilityNodeInfo.targetUrl"

.field public static final EXTRAS_KEY_UNCLIPPED_BOTTOM:Ljava/lang/String; = "AccessibilityNodeInfo.unclippedBottom"

.field public static final EXTRAS_KEY_UNCLIPPED_HEIGHT:Ljava/lang/String; = "AccessibilityNodeInfo.unclippedHeight"

.field public static final EXTRAS_KEY_UNCLIPPED_LEFT:Ljava/lang/String; = "AccessibilityNodeInfo.unclippedLeft"

.field public static final EXTRAS_KEY_UNCLIPPED_RIGHT:Ljava/lang/String; = "AccessibilityNodeInfo.unclippedRight"

.field public static final EXTRAS_KEY_UNCLIPPED_TOP:Ljava/lang/String; = "AccessibilityNodeInfo.unclippedTop"

.field public static final EXTRAS_KEY_UNCLIPPED_WIDTH:Ljava/lang/String; = "AccessibilityNodeInfo.unclippedWidth"

.field public static final EXTRAS_KEY_URL:Ljava/lang/String; = "url"

.field private static final sRequestImageData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextCharacterLocation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextCharacterLocationInWindow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

.field private mLastContentInvalidUtteranceTime:J

.field private mLastContentInvalidViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->sTextCharacterLocation:Ljava/util/List;

    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_IN_WINDOW_KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->sTextCharacterLocationInWindow:Ljava/util/List;

    const-string v0, "AccessibilityNodeInfo.requestImageData"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->sRequestImageData:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    return-void
.end method

.method private addAccessibilityNodeInfoActions(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;IZZZZZZZZZZZZZZZZZ)V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p1

    sget-object v1, Lg1/d;->m:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object v1, Lg1/d;->n:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object v1, Lg1/d;->y:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object v1, Lg1/d;->H:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    const-string v1, "AccessibilityIncludeLongClickAction"

    invoke-static {v1}, Lorg/chromium/content_public/browser/ContentFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg1/d;->h:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_0
    if-eqz p17, :cond_1

    sget-object v1, Lg1/d;->k:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object v1, Lg1/d;->l:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_1
    if-eqz p10, :cond_2

    if-eqz p11, :cond_2

    sget-object v1, Lg1/d;->x:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object v1, Lg1/d;->r:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object v1, Lg1/d;->J:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    if-eqz p16, :cond_2

    sget-object v1, Lg1/d;->t:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object v1, Lg1/d;->s:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object v1, Lg1/d;->q:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_2
    if-eqz p3, :cond_3

    sget-object v1, Lg1/d;->o:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_3
    if-eqz p4, :cond_4

    sget-object v1, Lg1/d;->p:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_4
    if-eqz p5, :cond_5

    sget-object v1, Lg1/d;->z:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object v1, Lg1/d;->D:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_5
    if-eqz p6, :cond_6

    sget-object v1, Lg1/d;->B:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object v1, Lg1/d;->E:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_6
    if-eqz p7, :cond_7

    sget-object v1, Lg1/d;->A:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object v1, Lg1/d;->F:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_7
    if-eqz p8, :cond_8

    sget-object v1, Lg1/d;->C:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    sget-object v1, Lg1/d;->G:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_8
    if-eqz p12, :cond_9

    if-eqz p13, :cond_a

    sget-object v1, Lg1/d;->f:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_9
    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_a
    sget-object v1, Lg1/d;->e:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    goto :goto_0

    :goto_1
    iget-object v1, v1, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->currentAccessibilityFocusId()I

    move-result v1

    move v2, p2

    if-ne v1, v2, :cond_b

    sget-object v1, Lg1/d;->j:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    goto :goto_2

    :cond_b
    sget-object v1, Lg1/d;->i:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :goto_2
    if-eqz p9, :cond_c

    sget-object v1, Lg1/d;->g:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_c
    if-eqz p14, :cond_d

    sget-object v1, Lg1/d;->u:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_d
    if-eqz p15, :cond_e

    sget-object v1, Lg1/d;->v:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_e
    if-eqz p18, :cond_f

    sget-object v1, Lg1/d;->I:Lg1/d;

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_f
    return-void
.end method

.method private addAccessibilityNodeInfoChildren(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;[I)V
    .locals 5
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {v3}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addSuggestionSpans(Landroid/text/SpannableString;[I[I[Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    aget v3, p2, v2

    aget v4, p3, v2

    if-ltz v3, :cond_1

    if-gt v3, v0, :cond_1

    if-ltz v4, :cond_1

    if-gt v4, v0, :cond_1

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Landroid/text/style/SuggestionSpan;

    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {v6}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->getContext()Landroid/content/Context;

    move-result-object v6

    aget-object v7, p4, v2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {p1, v5, v3, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private computeText(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[I[I[Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p3, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p5, :cond_1

    array-length v0, p5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_3

    new-instance p3, Landroid/text/style/URLSpan;

    invoke-direct {p3, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    invoke-virtual {v0, p3, p1, p2, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {p2}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->getLanguageTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    new-instance p3, Landroid/text/style/LocaleSpan;

    invoke-direct {p3, p2}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    invoke-virtual {v0, p3, p1, p2, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    if-eqz p5, :cond_5

    array-length p1, p5

    if-lez p1, :cond_5

    invoke-direct {p0, v0, p5, p6, p7}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->addSuggestionSpans(Landroid/text/SpannableString;[I[I[Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method private computeText(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[I[I[Ljava/lang/String;FIIILjava/lang/String;ZZ)Ljava/lang/CharSequence;
    .locals 11

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p12

    and-int/lit8 v3, p9, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    new-instance v8, Landroid/text/SpannableString;

    move-object v9, p1

    invoke-direct {v8, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_3

    new-instance v9, Landroid/text/style/URLSpan;

    move-object v10, p2

    invoke-direct {v9, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v10

    invoke-virtual {v8, v9, v5, v10, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {v9}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->getLanguageTag()Ljava/lang/String;

    move-result-object v9

    move-object v10, p4

    invoke-virtual {p4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {p4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    new-instance v10, Landroid/text/style/LocaleSpan;

    invoke-direct {v10, v9}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v8, v10, v5, v9, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    if-eqz v1, :cond_5

    array-length v9, v1

    if-lez v9, :cond_5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct {p0, v8, v1, v9, v10}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->addSuggestionSpans(Landroid/text/SpannableString;[I[I[Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_a

    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_3

    :cond_6
    move v0, v5

    :goto_3
    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_4

    :cond_7
    move v1, v5

    :goto_4
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v8, v0, v5, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_9

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v8, v0, v5, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_a

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v8, v0, v5, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    :goto_5
    if-eqz v6, :cond_b

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v8, v0, v5, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    if-eqz v7, :cond_c

    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v8, v0, v5, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    if-eqz p13, :cond_d

    new-instance v0, Landroid/text/style/SubscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v8, v0, v5, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    :cond_d
    if-eqz p14, :cond_e

    new-instance v0, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v8, v0, v5, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_e
    :goto_6
    if-eqz v2, :cond_f

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v8, v0, v5, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    move/from16 v1, p10

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v8, v0, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    move/from16 v3, p11

    invoke-direct {v0, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v8, v0, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move/from16 v3, p8

    float-to-int v3, v3

    invoke-static/range {p10 .. p10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v6, 0x0

    move-object p0, v0

    move-object/from16 p1, p12

    move p2, v6

    move p3, v3

    move-object p4, v1

    move-object/from16 p5, v4

    invoke-direct/range {p0 .. p5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v8, v0, v5, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v8
.end method

.method public static convertWebRectToAndroidCoordinates(Landroid/graphics/Rect;Landroid/os/Bundle;Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;Landroid/view/View;Z)V
    .locals 3

    invoke-interface {p2}, Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;->getScrollX()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    invoke-interface {p2}, Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;->getScrollY()F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-interface {p2, v0}, Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-interface {p2, v0}, Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-interface {p2, v0}, Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-interface {p2, v0}, Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    invoke-interface {p2}, Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;->getContentOffsetYPix()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p3, 0x1

    if-eqz p4, :cond_0

    aget p4, v0, v1

    aget v2, v0, p3

    invoke-virtual {p0, p4, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    aget p3, v0, p3

    invoke-interface {p2}, Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;->getContentOffsetYPix()F

    move-result p4

    float-to-int p4, p4

    add-int/2addr p3, p4

    invoke-interface {p2}, Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;->getLastFrameViewportHeightPixInt()I

    move-result p4

    add-int/2addr p4, p3

    aget v0, v0, v1

    invoke-interface {p2}, Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;->getLastFrameViewportWidthPixInt()I

    move-result p2

    add-int/2addr p2, v0

    const-string v1, "AccessibilityNodeInfo.unclippedTop"

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.unclippedBottom"

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.unclippedLeft"

    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.unclippedRight"

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.unclippedWidth"

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.unclippedHeight"

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ge p1, p3, :cond_1

    iput p3, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    if-le p1, p4, :cond_2

    iput p4, p0, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_0
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    if-le p1, p4, :cond_3

    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    if-ge p1, p3, :cond_4

    iput p3, p0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_1
    iget p1, p0, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_5

    iput v0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_5
    if-le p1, p2, :cond_6

    iput p2, p0, Landroid/graphics/Rect;->left:I

    :cond_6
    :goto_2
    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_7

    iput p2, p0, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_7
    if-ge p1, v0, :cond_8

    iput v0, p0, Landroid/graphics/Rect;->right:I

    :cond_8
    :goto_3
    return-void
.end method

.method private recordTimeToCreateSpannables(J)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long v3, v0, p1

    const-wide/16 v7, 0x1388

    const/16 v9, 0x64

    const-string v2, "Accessibility.Android.Performance.SpannableCreationTime2"

    const-wide/16 v5, 0x1

    invoke-static/range {v2 .. v9}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJI)V

    return-void
.end method

.method private setAccessibilityNodeInfoBaseAttributes(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object/from16 v3, p7

    move/from16 v4, p14

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v7, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/16 v8, 0x21

    if-lt v6, v8, :cond_0

    invoke-static {v7, v5}, Landroidx/activity/i;->k(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    :goto_0
    move-object v5, p4

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY"

    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->n(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual/range {p16 .. p16}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "AccessibilityNodeInfo.brailleLabel"

    move-object/from16 v8, p16

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual/range {p17 .. p17}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "AccessibilityNodeInfo.brailleRoleDescription"

    move-object/from16 v8, p17

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    const-string v7, "AccessibilityNodeInfo.chromeRole"

    move-object v8, p5

    invoke-virtual {v6, v7, p5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v7, "AccessibilityNodeInfo.roleDescription"

    move-object v8, p6

    invoke-virtual {v6, v7, p6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v7, "AccessibilityNodeInfo.hint"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "AccessibilityNodeInfo.cssDisplay"

    move-object/from16 v8, p15

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "AccessibilityNodeInfo.targetUrl"

    move-object/from16 v8, p8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v7, v0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {v7}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->currentRootId()I

    move-result v7

    move v8, p2

    if-ne v8, v7, :cond_5

    iget-object v7, v0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {v7}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->getSupportedHtmlTags()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ACTION_ARGUMENT_HTML_ELEMENT_STRING_VALUES"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_5
    const/4 v7, -0x1

    if-eq v2, v7, :cond_6

    iget-object v0, v0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->getView()Landroid/view/View;

    move-result-object v0

    iput v2, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b:I

    invoke-virtual {v5, v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    :cond_6
    move/from16 v0, p9

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    move/from16 v0, p11

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    const-string v0, "AccessibilityDeprecateTypeAnnounce"

    invoke-static {v0}, Lorg/chromium/content_public/browser/ContentFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v0, p12

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    :cond_7
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContentInvalid()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v0, p13

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :cond_8
    if-lez v4, :cond_9

    const-string v0, "AccessibilityNodeInfo.clickableScore"

    invoke-virtual {v6, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method private setAccessibilityNodeInfoBooleanAttributes(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;IZZZZZZZZZZZZZ)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->m(Z)V

    iget-object p3, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-virtual {p1, p5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->o(Z)V

    invoke-virtual {p3, p7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {p3, p8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    invoke-virtual {p3, p9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    invoke-virtual {p3, p11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    invoke-virtual {p1, p12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->s(Z)V

    invoke-virtual {p3, p13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    invoke-virtual {p3, p14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    const/4 p1, 0x1

    if-eqz p6, :cond_1

    if-eqz p9, :cond_1

    iget p4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mLastContentInvalidViewId:I

    if-ne p2, p4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iget-wide p6, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mLastContentInvalidUtteranceTime:J

    sub-long/2addr p4, p6

    const-wide/16 p6, 0x1194

    cmp-long p4, p4, p6

    if-ltz p4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iput-wide p4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mLastContentInvalidUtteranceTime:J

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    goto :goto_0

    :cond_0
    iput p2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mLastContentInvalidViewId:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iput-wide p4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mLastContentInvalidUtteranceTime:J

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    :cond_2
    :goto_0
    if-eqz p10, :cond_3

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    const-string p5, "AccessibilityNodeInfo.hasImage"

    const-string p6, "true"

    invoke-virtual {p4, p5, p6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-object p4, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->sRequestImageData:Ljava/util/List;

    invoke-virtual {p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    :cond_3
    if-eqz p15, :cond_4

    sget-object p4, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->sTextCharacterLocation:Ljava/util/List;

    invoke-virtual {p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    sget-object p4, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->sTextCharacterLocationInWindow:Ljava/util/List;

    invoke-virtual {p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    :cond_4
    const/16 p4, 0xf

    invoke-virtual {p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->currentAccessibilityFocusId()I

    move-result p0

    if-ne p0, p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    return-void
.end method


# virtual methods
.method public setAccessibilityNodeInfoCollectionInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;IIZI)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p2, p3, p5, p4}, Lg1/e;->a(IIIZ)Lg1/e;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->p(Lg1/e;)V

    return-void
.end method

.method public setAccessibilityNodeInfoCollectionItemInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;IIIIZ)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p2, p3, p4, p5, p6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public setAccessibilityNodeInfoImageData(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;[B)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "AccessibilityNodeInfo.imageData"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public setAccessibilityNodeInfoLocation(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;IIIIIIIZ)V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p5, p7

    add-int v2, p6, p8

    invoke-direct {v0, p5, p6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p5, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {p5}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->currentRootId()I

    move-result p5

    if-ne p2, p5, :cond_0

    iget-object p2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {p2}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->getAccessibilityCoordinates()Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;

    move-result-object p2

    invoke-interface {p2}, Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;->getContentOffsetYPix()F

    move-result p2

    float-to-int p2, p2

    const/4 p5, 0x0

    invoke-virtual {v0, p5, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->l(Landroid/graphics/Rect;)V

    new-instance p2, Landroid/graphics/Rect;

    add-int/2addr p7, p3

    add-int/2addr p8, p4

    invoke-direct {p2, p3, p4, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    iget-object p4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {p4}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->getAccessibilityCoordinates()Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;

    move-result-object p4

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->mDelegate:Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;

    invoke-interface {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;->getView()Landroid/view/View;

    move-result-object p0

    const/4 p5, 0x1

    invoke-static {p2, p3, p4, p0, p5}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->convertWebRectToAndroidCoordinates(Landroid/graphics/Rect;Landroid/os/Bundle;Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;Landroid/view/View;Z)V

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    const-string p0, "AccessibilityNodeInfo.offscreen"

    if-eqz p9, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p0, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAccessibilityNodeInfoPaneTitle(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAccessibilityNodeInfoRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;IFFF)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p2, p3, p4, p5}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    return-void
.end method

.method public setAccessibilityNodeInfoSelectionAttrs(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;II)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    iget-object p0, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    return-void
.end method

.method public setAccessibilityNodeInfoText(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;[I[I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    move-object v5, p0

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v5 .. v12}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->computeText(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[I[I[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v1, :cond_0

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->t(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v6, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/16 v7, 0x22

    if-lt v1, v7, :cond_1

    invoke-static {v6, v2}, Landroidx/activity/a;->i(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.CONTAINER_TITLE_KEY"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->r(Ljava/lang/CharSequence;)V

    :goto_1
    move-object v0, p0

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->u(Ljava/lang/CharSequence;)V

    goto :goto_1

    :goto_2
    invoke-direct {p0, v3, v4}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->recordTimeToCreateSpannables(J)V

    return-void
.end method

.method public setAccessibilityNodeInfoText(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;[I[I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;ZZ)V
    .locals 20
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    invoke-direct/range {v5 .. v19}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->computeText(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[I[I[Ljava/lang/String;FIIILjava/lang/String;ZZ)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v1, :cond_0

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->t(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v6, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/16 v7, 0x22

    if-lt v1, v7, :cond_1

    invoke-static {v6, v2}, Landroidx/activity/a;->i(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.CONTAINER_TITLE_KEY"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->r(Ljava/lang/CharSequence;)V

    :goto_1
    move-object/from16 v0, p0

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->u(Ljava/lang/CharSequence;)V

    goto :goto_1

    :goto_2
    invoke-direct {v0, v3, v4}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->recordTimeToCreateSpannables(J)V

    return-void
.end method

.method public setAccessibilityNodeInfoViewIdResourceName(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    return-void
.end method
