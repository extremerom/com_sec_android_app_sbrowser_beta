.class public final enum Lhc/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lhc/j;

.field public static final enum AFTER_DOT:Lhc/j;

.field public static final enum BEGINNING:Lhc/j;

.field public static final enum MIDDLE:Lhc/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lhc/j;

    const-string v1, "BEGINNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhc/j;->BEGINNING:Lhc/j;

    new-instance v1, Lhc/j;

    const-string v2, "MIDDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhc/j;->MIDDLE:Lhc/j;

    new-instance v2, Lhc/j;

    const-string v3, "AFTER_DOT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lhc/j;->AFTER_DOT:Lhc/j;

    filled-new-array {v0, v1, v2}, [Lhc/j;

    move-result-object v0

    sput-object v0, Lhc/j;->$VALUES:[Lhc/j;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lhc/j;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhc/j;
    .locals 1

    const-class v0, Lhc/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhc/j;

    return-object p0
.end method

.method public static values()[Lhc/j;
    .locals 1

    sget-object v0, Lhc/j;->$VALUES:[Lhc/j;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhc/j;

    return-object v0
.end method
