.class public final enum Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

.field public static final enum FULL_SCREEN:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

.field public static final enum MAJOR_BOTH_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

.field public static final enum MAJOR_PP_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

.field public static final enum MAJOR_TOS_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

.field public static final enum MINOR_BOTH_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

.field public static final enum MINOR_PP_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

.field public static final enum MINOR_TOS_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

.field public static final enum NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;
    .locals 8

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->FULL_SCREEN:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MAJOR_PP_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MAJOR_TOS_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MAJOR_BOTH_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    sget-object v5, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MINOR_PP_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    sget-object v6, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MINOR_TOS_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    sget-object v7, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MINOR_BOTH_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    filled-new-array/range {v0 .. v7}, [Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    const-string v1, "NO_UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    const-string v1, "FULL_SCREEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->FULL_SCREEN:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    const-string v1, "MAJOR_PP_UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MAJOR_PP_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    const-string v1, "MAJOR_TOS_UPDATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MAJOR_TOS_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    const-string v1, "MAJOR_BOTH_UPDATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MAJOR_BOTH_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    const-string v1, "MINOR_PP_UPDATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MINOR_PP_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    const-string v1, "MINOR_TOS_UPDATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MINOR_TOS_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    const-string v1, "MINOR_BOTH_UPDATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MINOR_BOTH_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->$values()[Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object v0
.end method
