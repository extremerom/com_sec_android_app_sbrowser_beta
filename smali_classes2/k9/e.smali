.class public final enum Lk9/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lk9/e;

.field public static final enum Circle:Lk9/e;

.field public static final enum RoundRect:Lk9/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lk9/e;

    const-string v1, "RoundRect"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk9/e;->RoundRect:Lk9/e;

    new-instance v1, Lk9/e;

    const-string v2, "Circle"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk9/e;->Circle:Lk9/e;

    filled-new-array {v0, v1}, [Lk9/e;

    move-result-object v0

    sput-object v0, Lk9/e;->$VALUES:[Lk9/e;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lk9/e;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk9/e;
    .locals 1

    const-class v0, Lk9/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk9/e;

    return-object p0
.end method

.method public static values()[Lk9/e;
    .locals 1

    sget-object v0, Lk9/e;->$VALUES:[Lk9/e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk9/e;

    return-object v0
.end method
