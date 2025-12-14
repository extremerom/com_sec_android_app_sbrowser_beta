.class public final enum LI7/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lx7/b;


# static fields
.field private static final synthetic $VALUES:[LI7/b;

.field public static final enum DATA_MESSAGE:LI7/b;

.field public static final enum DISPLAY_NOTIFICATION:LI7/b;

.field public static final enum TOPIC:LI7/b;

.field public static final enum UNKNOWN:LI7/b;


# instance fields
.field private final number_:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LI7/b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LI7/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, LI7/b;->UNKNOWN:LI7/b;

    new-instance v1, LI7/b;

    const-string v2, "DATA_MESSAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LI7/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, LI7/b;->DATA_MESSAGE:LI7/b;

    new-instance v2, LI7/b;

    const-string v3, "TOPIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LI7/b;-><init>(Ljava/lang/String;II)V

    sput-object v2, LI7/b;->TOPIC:LI7/b;

    new-instance v3, LI7/b;

    const-string v4, "DISPLAY_NOTIFICATION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LI7/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, LI7/b;->DISPLAY_NOTIFICATION:LI7/b;

    filled-new-array {v0, v1, v2, v3}, [LI7/b;

    move-result-object v0

    sput-object v0, LI7/b;->$VALUES:[LI7/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LI7/b;->number_:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LI7/b;
    .locals 1

    const-class v0, LI7/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LI7/b;

    return-object p0
.end method

.method public static values()[LI7/b;
    .locals 1

    sget-object v0, LI7/b;->$VALUES:[LI7/b;

    invoke-virtual {v0}, [LI7/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LI7/b;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, LI7/b;->number_:I

    return p0
.end method
