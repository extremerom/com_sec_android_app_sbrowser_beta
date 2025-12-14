.class public final enum LG3/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LG3/w;

.field public static final enum INDIVIDUALLY:LG3/w;

.field public static final enum SIMULTANEOUSLY:LG3/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LG3/w;

    const-string v1, "SIMULTANEOUSLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LG3/w;->SIMULTANEOUSLY:LG3/w;

    new-instance v1, LG3/w;

    const-string v2, "INDIVIDUALLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LG3/w;->INDIVIDUALLY:LG3/w;

    filled-new-array {v0, v1}, [LG3/w;

    move-result-object v0

    sput-object v0, LG3/w;->$VALUES:[LG3/w;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LG3/w;
    .locals 1

    const-class v0, LG3/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LG3/w;

    return-object p0
.end method

.method public static values()[LG3/w;
    .locals 1

    sget-object v0, LG3/w;->$VALUES:[LG3/w;

    invoke-virtual {v0}, [LG3/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG3/w;

    return-object v0
.end method
