.class public final enum LEb/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LEb/b;

.field public static final enum JAVA:LEb/b;

.field public static final enum KOTLIN:LEb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LEb/b;

    const-string v1, "JAVA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LEb/b;->JAVA:LEb/b;

    new-instance v1, LEb/b;

    const-string v2, "KOTLIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LEb/b;->KOTLIN:LEb/b;

    filled-new-array {v0, v1}, [LEb/b;

    move-result-object v0

    sput-object v0, LEb/b;->$VALUES:[LEb/b;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LEb/b;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LEb/b;
    .locals 1

    const-class v0, LEb/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LEb/b;

    return-object p0
.end method

.method public static values()[LEb/b;
    .locals 1

    sget-object v0, LEb/b;->$VALUES:[LEb/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEb/b;

    return-object v0
.end method
