.class public final Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$Companion;,
        Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$TranslateCapsuleDelegate;,
        Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 ^2\u00020\u0001:\u0002_^B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\nJ\r\u0010\u0012\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\nJ\u001f\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J3\u0010\u001e\u001a\u00020\u00082\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008 \u0010\nJ\u0017\u0010#\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008%\u0010\nJ\u0017\u0010&\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008&\u0010$J\u0017\u0010(\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010+\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020*H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010/\u001a\u00020\u00082\u0006\u0010.\u001a\u00020-H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u001f\u00101\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00081\u0010\u0010J\u000f\u00102\u001a\u00020*H\u0002\u00a2\u0006\u0004\u00082\u00103J\u0017\u00104\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020-H\u0002\u00a2\u0006\u0004\u00084\u00100J\u000f\u00105\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00085\u00106J\u0017\u00108\u001a\u0002072\u0006\u0010\u001d\u001a\u00020-H\u0002\u00a2\u0006\u0004\u00088\u00109J\u0017\u0010:\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020-H\u0002\u00a2\u0006\u0004\u0008:\u00100R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010;R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010<R\u0014\u0010>\u001a\u00020=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0018\u0010A\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0018\u0010D\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER,\u0010I\u001a\u001a\u0012\u0004\u0012\u00020-\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020*0G0F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010L\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR$\u0010O\u001a\u0004\u0018\u00010N8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u0016\u0010U\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010X\u001a\u00020W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u001c\u0010\\\u001a\n [*\u0004\u0018\u00010Z0Z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]\u00a8\u0006`"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;",
        "imageTranslator",
        "<init>",
        "(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;)V",
        "Ldb/r;",
        "invalidateCapsuleLayout",
        "()V",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;",
        "ocrData",
        "",
        "isImageTranslateOn",
        "initCapsules",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;Z)V",
        "turnOffTranslate",
        "clearCapsuleLayout",
        "initFixedCapsules",
        "initBasicCapsules",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)V",
        "canShowBasicCapsules",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)Z",
        "Landroid/view/View;",
        "backgroundView",
        "Landroid/widget/ImageView;",
        "image",
        "Landroid/widget/TextView;",
        "text",
        "updateLayoutColor",
        "(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V",
        "drawCapsules",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/Capsule;",
        "capsule",
        "checkCapsuleBeforeDrawing",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/Capsule;)V",
        "setClientCapsuleLayoutVisible",
        "inflateCapsule",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;",
        "drawSimpleCapsule",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;)V",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;",
        "drawToggleCapsule",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;)V",
        "",
        "turnedOnCapsuleTitle",
        "updateToggleCheckedMap",
        "(Ljava/lang/String;)V",
        "addTranslateCapsule",
        "initTranslateCapsule",
        "()Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;",
        "addAddToNoteCapsule",
        "isNoteAppEnabled",
        "()Z",
        "Landroid/content/Intent;",
        "getAddToNoteIntent",
        "(Ljava/lang/String;)Landroid/content/Intent;",
        "addCopyAllCapsule",
        "Landroid/content/Context;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;",
        "capsuleContainer",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;",
        "Landroid/widget/LinearLayout;",
        "capsuleLayout",
        "Landroid/widget/LinearLayout;",
        "Landroid/view/ViewGroup;",
        "clientCapsuleLayout",
        "Landroid/view/ViewGroup;",
        "",
        "Ldb/j;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;",
        "toggleMap",
        "Ljava/util/Map;",
        "LNc/j0;",
        "drawingJob",
        "LNc/j0;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$TranslateCapsuleDelegate;",
        "translateCapsuleDelegate",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$TranslateCapsuleDelegate;",
        "getTranslateCapsuleDelegate$deepsky_sdk_textextraction_8_5_6_release",
        "()Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$TranslateCapsuleDelegate;",
        "setTranslateCapsuleDelegate$deepsky_sdk_textextraction_8_5_6_release",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$TranslateCapsuleDelegate;)V",
        "isCapsuleLayoutVisible",
        "Z",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;",
        "capsuleColor",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;",
        "Landroid/view/LayoutInflater;",
        "kotlin.jvm.PlatformType",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "Companion",
        "TranslateCapsuleDelegate",
        "deepsky-sdk-textextraction-8.5.6_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private capsuleColor:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final capsuleContainer:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private capsuleLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private clientCapsuleLayout:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private drawingJob:LNc/j0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private isCapsuleLayoutVisible:Z

.field private final toggleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldb/j;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private translateCapsuleDelegate:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$TranslateCapsuleDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageTranslator"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    new-instance p2, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;

    invoke-direct {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleContainer:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->toggleMap:Ljava/util/Map;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->isCapsuleLayoutVisible:Z

    new-instance p2, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$color;->capsule_background:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$color;->capsule_tint_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$color;->capsule_toggle_on_background:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sget v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$color;->capsule_toggle_on_tint_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v4

    sget v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$color;->capsule_ripple_background_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;-><init>(IIIII)V

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleColor:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic a(Ldb/r;)Ldb/r;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->invalidateCapsuleLayout$lambda$1(Ldb/r;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAddToNoteIntent(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->getAddToNoteIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCapsuleListener$p(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;)Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelper$CapsuleListener;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getTranslateCapsuleListener$p(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;)Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/TranslateCapsuleListener;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic access$isNoteAppEnabled(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->isNoteAppEnabled()Z

    move-result p0

    return p0
.end method

.method private final addAddToNoteCapsule(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleContainer:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/BasicCapsule;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->context:Landroid/content/Context;

    sget v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$string;->add_to_notes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/CapsuleActionType;->ADD_TO_NOTE:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/CapsuleActionType;

    sget-object v4, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/util/CapsuleUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/util/CapsuleUtil;

    iget-object v5, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->context:Landroid/content/Context;

    sget v6, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$drawable;->capsule_notes:I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/util/CapsuleUtil;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$addAddToNoteCapsule$1;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$addAddToNoteCapsule$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/BasicCapsule;-><init>(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/CapsuleActionType;Landroid/net/Uri;Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/SimpleCapsuleClickListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;->appendCapsule(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/Capsule;)V

    return-void
.end method

.method private final addCopyAllCapsule(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleContainer:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/BasicCapsule;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->context:Landroid/content/Context;

    sget v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$string;->add_to_copy_all:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/CapsuleActionType;->COPY_ALL:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/CapsuleActionType;

    sget-object v4, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/util/CapsuleUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/util/CapsuleUtil;

    iget-object v5, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->context:Landroid/content/Context;

    sget v6, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$drawable;->capsule_copyall:I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/util/CapsuleUtil;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$addCopyAllCapsule$1;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$addCopyAllCapsule$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/BasicCapsule;-><init>(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/CapsuleActionType;Landroid/net/Uri;Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/SimpleCapsuleClickListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;->appendCapsule(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/Capsule;)V

    return-void
.end method

.method private final addTranslateCapsule(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->isTranslationAvailable(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->initTranslateCapsule()Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;->setOn(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleContainer:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;->insertCapsule(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/Capsule;I)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->drawToggleCapsule$lambda$11$lambda$9(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Throwable;)Ldb/r;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->invalidateCapsuleLayout$lambda$2(Ljava/lang/Throwable;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final canShowBasicCapsules(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->getBlockList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/16 p1, 0xa

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final checkCapsuleBeforeDrawing(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/Capsule;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/Capsule;->getCapsuleActionType()Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/CapsuleActionType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->isNoteAppEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleContainer:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;->removeCapsule(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/Capsule;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->drawToggleCapsule$lambda$11$lambda$10(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;Landroid/view/View;)V

    return-void
.end method

.method private final drawCapsules()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->isCapsuleLayoutVisible:Z

    if-nez v0, :cond_0

    const-string p0, "CapsuleHelper"

    const-string v0, "drawCapsules - capsule layout is not visible"

    invoke-static {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleContainer:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;->getMergedCapsuleList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/Capsule;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->checkCapsuleBeforeDrawing(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/Capsule;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->inflateCapsule(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/Capsule;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->setClientCapsuleLayoutVisible()V

    return-void
.end method

.method private final drawSimpleCapsule(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$layout;->capsule_view:I

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    sget v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$id;->capture_ai_bottom_action_text:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$id;->capture_ai_bottom_action_icon:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;->getIcon()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-direct {p0, v6, v0, v7}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->updateLayoutColor(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/RoleDescriptionAccessibilityDelegate;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$string;->capsule_role_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/RoleDescriptionAccessibilityDelegate;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    sget-object v4, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleAnimator;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleAnimator;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string p0, "getContext(...)"

    invoke-static {v5, p0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    invoke-static/range {v4 .. v11}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleAnimator;->startShowingAnimation$default(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleAnimator;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;JILjava/lang/Object;)V

    return-void
.end method

.method private static final drawSimpleCapsule$lambda$8$lambda$7(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;->getListener()Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/SimpleCapsuleClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/SimpleCapsuleClickListener;->onClick()V

    return-void
.end method

.method private final drawToggleCapsule(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;)V
    .locals 8

    new-instance v6, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;->getIcon()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;->isOn()Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleColor:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZLcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;)V

    new-instance v0, LFa/b;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p1, p0}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;->setOnListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;->setOffListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->toggleMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;->getTitle()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ldb/j;

    invoke-direct {v1, v6, p1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$id;->capture_ai_bottom_action_text:I

    invoke-virtual {v6, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleAnimator;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleAnimator;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "getContext(...)"

    invoke-static {v1, p0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    const/16 p0, 0x8

    move-object v2, v6

    move v6, p0

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleAnimator;->startShowingAnimation$default(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleAnimator;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;JILjava/lang/Object;)V

    return-void
.end method

.method private static final drawToggleCapsule$lambda$11$lambda$10(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;->getListener()Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/ToggleCapsuleListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/ToggleCapsuleListener;->onToggleOff()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;->setOn(Z)V

    return-void
.end method

.method private static final drawToggleCapsule$lambda$11$lambda$9(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;->getListener()Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/ToggleCapsuleListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/ToggleCapsuleListener;->onToggleOn()V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;->setOn(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->updateToggleCheckedMap(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->drawSimpleCapsule$lambda$8$lambda$7(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;Ldb/r;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->invalidateCapsuleLayout$lambda$0(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;Ldb/r;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final getAddToNoteIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const-string p0, "android.intent.action.SEND"

    invoke-static {p0}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.notes"

    const-string v2, "com.samsung.android.app.notes.nativecomposer.NativeComposerActionNewActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "text/plain"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ai_text_extra"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private final inflateCapsule(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/Capsule;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->drawSimpleCapsule(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->drawToggleCapsule(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final initBasicCapsules(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->canShowBasicCapsules(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->isNoteAppEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->addAddToNoteCapsule(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->addCopyAllCapsule(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "CapsuleHelper"

    const-string p1, "initBasicCapsules - not show basic capsules due to large block size"

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final initFixedCapsules(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->addTranslateCapsule(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;Z)V

    return-void
.end method

.method private final initTranslateCapsule()Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;
    .locals 9

    new-instance v8, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->context:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$string;->translate:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "getString(...)"

    invoke-static {v1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/CapsuleActionType;->TRANSLATE:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/CapsuleActionType;

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/util/CapsuleUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/util/CapsuleUtil;

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->context:Landroid/content/Context;

    sget v4, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$drawable;->capsule_translate:I

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/util/CapsuleUtil;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$initTranslateCapsule$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$initTranslateCapsule$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;-><init>(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/CapsuleActionType;Landroid/net/Uri;Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/ToggleCapsuleListener;ZILtb/f;)V

    return-object v8
.end method

.method private static final invalidateCapsuleLayout$lambda$0(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;Ldb/r;)Ldb/r;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "CapsuleHelper"

    const-string v0, "drawing capsules start"

    invoke-static {p1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->clearCapsuleLayout()V

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->drawCapsules()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final invalidateCapsuleLayout$lambda$1(Ldb/r;)Ldb/r;
    .locals 1

    const-string p0, "CapsuleHelper"

    const-string v0, "capsule drawing success"

    invoke-static {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final invalidateCapsuleLayout$lambda$2(Ljava/lang/Throwable;)Ldb/r;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CapsuleHelper"

    const-string v1, "capsule drawing fail"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final isNoteAppEnabled()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/PackageHelper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/util/PackageHelper;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->context:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.notes"

    const-string v2, "com.samsung.android.app.notes.nativecomposer.NativeComposerActionNewActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/PackageHelper;->isPackageExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final setClientCapsuleLayoutVisible()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleContainer:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;->isEmpty()Z

    move-result v0

    const-string v1, "CapsuleHelper"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleContainer:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleContainer;->getSize()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CapsuleLayout visible: total "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " capsules"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->clientCapsuleLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v0, "CapsuleLayout gone, capsuleContainer empty"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->clientCapsuleLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateLayoutColor(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleColor:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleColor:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->getRippleColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleColor:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->getTextColor()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleColor:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/CapsuleColor;->getTextColor()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private final updateToggleCheckedMap(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->toggleMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldb/j;

    iget-object v1, v1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldb/j;

    iget-object v2, v2, Ldb/j;->b:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;->setChecked(Z)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;->setOn(Z)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;->updateCapsule(Z)V

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;->getOffListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final clearCapsuleLayout()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->capsuleLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public final getTranslateCapsuleDelegate$deepsky_sdk_textextraction_8_5_6_release()Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$TranslateCapsuleDelegate;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->translateCapsuleDelegate:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$TranslateCapsuleDelegate;

    return-object p0
.end method

.method public final initCapsules(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;Z)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "ocrData"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->getBlockList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CapsuleHelper"

    const-string p1, "initCapsules - blockInfoList is empty"

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->initFixedCapsules(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->initBasicCapsules(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)V

    return-void
.end method

.method public invalidateCapsuleLayout()V
    .locals 4

    const-string v0, "CapsuleHelper"

    const-string v1, "invalidateCapsuleLayout called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/SingleThreadCoroutineSwitcher;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/util/SingleThreadCoroutineSwitcher;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/SingleThreadCoroutineSwitcher;->newChain()Lcom/samsung/android/app/sdk/deepsky/textextraction/util/SingleThreadCoroutineSwitcher$Chain;

    move-result-object v0

    new-instance v1, LC9/b;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0}, LC9/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/SingleThreadCoroutineSwitcher$Chain;->onMain(Lsb/k;)Lcom/samsung/android/app/sdk/deepsky/textextraction/util/SingleThreadCoroutineSwitcher$Chain;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/provider/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/sites/provider/b;-><init>(I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/provider/b;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/sites/provider/b;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/SingleThreadCoroutineSwitcher$Chain;->start(Lsb/k;Lsb/k;)LNc/j0;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->drawingJob:LNc/j0;

    return-void
.end method

.method public final setTranslateCapsuleDelegate$deepsky_sdk_textextraction_8_5_6_release(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$TranslateCapsuleDelegate;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$TranslateCapsuleDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->translateCapsuleDelegate:Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl$TranslateCapsuleDelegate;

    return-void
.end method

.method public turnOffTranslate()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->toggleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldb/j;

    iget-object v2, v2, Ldb/j;->a:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldb/j;

    iget-object v3, v3, Ldb/j;->b:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->context:Landroid/content/Context;

    sget v5, Lcom/samsung/android/app/sdk/deepsky/textextraction/R$string;->translate:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;->setChecked(Z)V

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;->setOn(Z)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;->updateCapsule(Z)V

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;->getOffListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method
