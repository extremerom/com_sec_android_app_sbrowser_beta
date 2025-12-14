.class public final enum Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DragInResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

.field public static final enum FAIL_AT_LEAST_ITEMS_TOOLS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

.field public static final enum FAIL_PRIMARY_MENU_FULL:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

.field public static final enum FAIL_TOOLBAR_FULL:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

.field public static final enum FAIL_UNAVAILABLE_HIDDEN:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

.field public static final enum FAIL_UNAVAILABLE_TOOLS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

.field public static final enum INVALID_POSITION:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

.field public static final enum SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    .locals 8

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_PRIMARY_MENU_FULL:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_TOOLBAR_FULL:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    sget-object v3, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_UNAVAILABLE_HIDDEN:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    sget-object v4, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_UNAVAILABLE_TOOLS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    sget-object v5, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_AT_LEAST_ITEMS_TOOLS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    sget-object v6, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->INVALID_POSITION:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    sget-object v7, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    filled-new-array/range {v0 .. v7}, [Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->SUCCESS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    const-string v1, "FAIL_PRIMARY_MENU_FULL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_PRIMARY_MENU_FULL:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    const-string v1, "FAIL_TOOLBAR_FULL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_TOOLBAR_FULL:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    const-string v1, "FAIL_UNAVAILABLE_HIDDEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_UNAVAILABLE_HIDDEN:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    const-string v1, "FAIL_UNAVAILABLE_TOOLS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_UNAVAILABLE_TOOLS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    const-string v1, "FAIL_AT_LEAST_ITEMS_TOOLS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->FAIL_AT_LEAST_ITEMS_TOOLS:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    const-string v1, "INVALID_POSITION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->INVALID_POSITION:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    const-string v1, "NONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->$values()[Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;

    return-object v0
.end method
