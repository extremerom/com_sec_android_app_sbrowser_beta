.class public final enum LA1/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LA1/e;

.field public static final enum ACTIVITY:LA1/e;

.field public static final enum BROADCAST:LA1/e;

.field public static final enum CALLBACK:LA1/e;

.field public static final enum FOREGROUND_SERVICE:LA1/e;

.field public static final enum SERVICE:LA1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LA1/e;

    const-string v1, "ACTIVITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LA1/e;->ACTIVITY:LA1/e;

    new-instance v1, LA1/e;

    const-string v2, "BROADCAST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LA1/e;->BROADCAST:LA1/e;

    new-instance v2, LA1/e;

    const-string v3, "SERVICE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LA1/e;->SERVICE:LA1/e;

    new-instance v3, LA1/e;

    const-string v4, "FOREGROUND_SERVICE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LA1/e;->FOREGROUND_SERVICE:LA1/e;

    new-instance v4, LA1/e;

    const-string v5, "CALLBACK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LA1/e;->CALLBACK:LA1/e;

    filled-new-array {v0, v1, v2, v3, v4}, [LA1/e;

    move-result-object v0

    sput-object v0, LA1/e;->$VALUES:[LA1/e;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LA1/e;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LA1/e;
    .locals 1

    const-class v0, LA1/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LA1/e;

    return-object p0
.end method

.method public static values()[LA1/e;
    .locals 1

    sget-object v0, LA1/e;->$VALUES:[LA1/e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LA1/e;

    return-object v0
.end method
