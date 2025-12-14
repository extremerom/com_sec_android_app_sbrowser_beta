.class public final enum LO0/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LO0/s;

.field public static final enum CENTER:LO0/s;

.field public static final enum END:LO0/s;

.field public static final enum NONE:LO0/s;

.field public static final enum START:LO0/s;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LO0/s;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LO0/s;->NONE:LO0/s;

    new-instance v1, LO0/s;

    const-string v2, "START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LO0/s;->START:LO0/s;

    new-instance v2, LO0/s;

    const-string v3, "END"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LO0/s;->END:LO0/s;

    new-instance v3, LO0/s;

    const-string v4, "CENTER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LO0/s;->CENTER:LO0/s;

    filled-new-array {v0, v1, v2, v3}, [LO0/s;

    move-result-object v0

    sput-object v0, LO0/s;->$VALUES:[LO0/s;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LO0/s;
    .locals 1

    const-class v0, LO0/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LO0/s;

    return-object p0
.end method

.method public static values()[LO0/s;
    .locals 1

    sget-object v0, LO0/s;->$VALUES:[LO0/s;

    invoke-virtual {v0}, [LO0/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LO0/s;

    return-object v0
.end method
