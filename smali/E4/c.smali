.class public final enum LE4/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LE4/c;

.field public static final enum DEFAULT:LE4/c;

.field public static final enum HIGHEST:LE4/c;

.field public static final enum VERY_LOW:LE4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LE4/c;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE4/c;->DEFAULT:LE4/c;

    new-instance v1, LE4/c;

    const-string v2, "VERY_LOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LE4/c;->VERY_LOW:LE4/c;

    new-instance v2, LE4/c;

    const-string v3, "HIGHEST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LE4/c;->HIGHEST:LE4/c;

    filled-new-array {v0, v1, v2}, [LE4/c;

    move-result-object v0

    sput-object v0, LE4/c;->$VALUES:[LE4/c;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LE4/c;
    .locals 1

    const-class v0, LE4/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LE4/c;

    return-object p0
.end method

.method public static values()[LE4/c;
    .locals 1

    sget-object v0, LE4/c;->$VALUES:[LE4/c;

    invoke-virtual {v0}, [LE4/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LE4/c;

    return-object v0
.end method
