.class public final enum LQ3/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LQ3/b;

.field public static final DEFAULT:LQ3/b;

.field public static final enum PREFER_ARGB_8888:LQ3/b;

.field public static final enum PREFER_RGB_565:LQ3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LQ3/b;

    const-string v1, "PREFER_ARGB_8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ3/b;->PREFER_ARGB_8888:LQ3/b;

    new-instance v1, LQ3/b;

    const-string v2, "PREFER_RGB_565"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LQ3/b;->PREFER_RGB_565:LQ3/b;

    filled-new-array {v0, v1}, [LQ3/b;

    move-result-object v1

    sput-object v1, LQ3/b;->$VALUES:[LQ3/b;

    sput-object v0, LQ3/b;->DEFAULT:LQ3/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQ3/b;
    .locals 1

    const-class v0, LQ3/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQ3/b;

    return-object p0
.end method

.method public static values()[LQ3/b;
    .locals 1

    sget-object v0, LQ3/b;->$VALUES:[LQ3/b;

    invoke-virtual {v0}, [LQ3/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQ3/b;

    return-object v0
.end method
