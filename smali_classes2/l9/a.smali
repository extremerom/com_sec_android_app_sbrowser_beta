.class public final enum Ll9/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Ll9/a;

.field public static final enum ADD:Ll9/a;

.field public static final enum PREMULT:Ll9/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ll9/a;

    const-string v1, "PREMULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll9/a;->PREMULT:Ll9/a;

    new-instance v1, Ll9/a;

    const-string v2, "ADD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ll9/a;->ADD:Ll9/a;

    filled-new-array {v0, v1}, [Ll9/a;

    move-result-object v0

    sput-object v0, Ll9/a;->$VALUES:[Ll9/a;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Ll9/a;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll9/a;
    .locals 1

    const-class v0, Ll9/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll9/a;

    return-object p0
.end method

.method public static values()[Ll9/a;
    .locals 1

    sget-object v0, Ll9/a;->$VALUES:[Ll9/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll9/a;

    return-object v0
.end method
