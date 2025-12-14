.class public final enum LDb/G;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LDb/G;

.field public static final enum DECLARED:LDb/G;

.field public static final enum INHERITED:LDb/G;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LDb/G;

    const-string v1, "DECLARED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDb/G;->DECLARED:LDb/G;

    new-instance v1, LDb/G;

    const-string v2, "INHERITED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LDb/G;->INHERITED:LDb/G;

    filled-new-array {v0, v1}, [LDb/G;

    move-result-object v0

    sput-object v0, LDb/G;->$VALUES:[LDb/G;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LDb/G;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LDb/G;
    .locals 1

    const-class v0, LDb/G;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDb/G;

    return-object p0
.end method

.method public static values()[LDb/G;
    .locals 1

    sget-object v0, LDb/G;->$VALUES:[LDb/G;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDb/G;

    return-object v0
.end method
