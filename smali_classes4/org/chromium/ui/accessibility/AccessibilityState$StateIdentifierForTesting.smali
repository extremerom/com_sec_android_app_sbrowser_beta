.class public final enum Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/accessibility/AccessibilityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateIdentifierForTesting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

.field public static final enum CAPABILITIES_MASK:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

.field public static final enum CAPABILITIES_MASK_HEURISTIC:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

.field public static final enum EVENT_TYPE_MASK:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

.field public static final enum EVENT_TYPE_MASK_HEURISTIC:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

.field public static final enum FEEDBACK_TYPE_MASK:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

.field public static final enum FEEDBACK_TYPE_MASK_HEURISTIC:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

.field public static final enum FLAGS_MASK:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

.field public static final enum FLAGS_MASK_HEURISTIC:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;


# direct methods
.method private static synthetic $values()[Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;
    .locals 8

    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->EVENT_TYPE_MASK:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    sget-object v1, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->FEEDBACK_TYPE_MASK:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    sget-object v2, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->FLAGS_MASK:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    sget-object v3, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->CAPABILITIES_MASK:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    sget-object v4, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->EVENT_TYPE_MASK_HEURISTIC:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    sget-object v5, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->FEEDBACK_TYPE_MASK_HEURISTIC:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    sget-object v6, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->FLAGS_MASK_HEURISTIC:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    sget-object v7, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->CAPABILITIES_MASK_HEURISTIC:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    filled-new-array/range {v0 .. v7}, [Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    const-string v1, "EVENT_TYPE_MASK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->EVENT_TYPE_MASK:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    new-instance v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    const-string v1, "FEEDBACK_TYPE_MASK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->FEEDBACK_TYPE_MASK:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    new-instance v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    const-string v1, "FLAGS_MASK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->FLAGS_MASK:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    new-instance v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    const-string v1, "CAPABILITIES_MASK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->CAPABILITIES_MASK:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    new-instance v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    const-string v1, "EVENT_TYPE_MASK_HEURISTIC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->EVENT_TYPE_MASK_HEURISTIC:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    new-instance v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    const-string v1, "FEEDBACK_TYPE_MASK_HEURISTIC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->FEEDBACK_TYPE_MASK_HEURISTIC:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    new-instance v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    const-string v1, "FLAGS_MASK_HEURISTIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->FLAGS_MASK_HEURISTIC:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    new-instance v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    const-string v1, "CAPABILITIES_MASK_HEURISTIC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->CAPABILITIES_MASK_HEURISTIC:Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->$values()[Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->$VALUES:[Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;
    .locals 1

    const-class v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    return-object p0
.end method

.method public static values()[Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;
    .locals 1

    sget-object v0, Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->$VALUES:[Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    invoke-virtual {v0}, [Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/ui/accessibility/AccessibilityState$StateIdentifierForTesting;

    return-object v0
.end method
