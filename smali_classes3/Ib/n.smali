.class public final enum LIb/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LIb/n;

.field public static final enum DEPRECATED_LIST_METHODS:LIb/n;

.field public static final enum DROP:LIb/n;

.field public static final enum HIDDEN:LIb/n;

.field public static final enum NOT_CONSIDERED:LIb/n;

.field public static final enum VISIBLE:LIb/n;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LIb/n;

    const-string v1, "HIDDEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIb/n;->HIDDEN:LIb/n;

    new-instance v1, LIb/n;

    const-string v2, "VISIBLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LIb/n;->VISIBLE:LIb/n;

    new-instance v2, LIb/n;

    const-string v3, "DEPRECATED_LIST_METHODS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LIb/n;->DEPRECATED_LIST_METHODS:LIb/n;

    new-instance v3, LIb/n;

    const-string v4, "NOT_CONSIDERED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LIb/n;->NOT_CONSIDERED:LIb/n;

    new-instance v4, LIb/n;

    const-string v5, "DROP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LIb/n;->DROP:LIb/n;

    filled-new-array {v0, v1, v2, v3, v4}, [LIb/n;

    move-result-object v0

    sput-object v0, LIb/n;->$VALUES:[LIb/n;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LIb/n;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LIb/n;
    .locals 1

    const-class v0, LIb/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LIb/n;

    return-object p0
.end method

.method public static values()[LIb/n;
    .locals 1

    sget-object v0, LIb/n;->$VALUES:[LIb/n;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LIb/n;

    return-object v0
.end method
