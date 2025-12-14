.class public final enum LK4/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lx7/b;


# static fields
.field private static final synthetic $VALUES:[LK4/c;

.field public static final enum CACHE_FULL:LK4/c;

.field public static final enum INVALID_PAYLOD:LK4/c;

.field public static final enum MAX_RETRIES_REACHED:LK4/c;

.field public static final enum MESSAGE_TOO_OLD:LK4/c;

.field public static final enum PAYLOAD_TOO_BIG:LK4/c;

.field public static final enum REASON_UNKNOWN:LK4/c;

.field public static final enum SERVER_ERROR:LK4/c;


# instance fields
.field private final number_:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LK4/c;

    const-string v1, "REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LK4/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, LK4/c;->REASON_UNKNOWN:LK4/c;

    new-instance v1, LK4/c;

    const-string v2, "MESSAGE_TOO_OLD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LK4/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, LK4/c;->MESSAGE_TOO_OLD:LK4/c;

    new-instance v2, LK4/c;

    const-string v3, "CACHE_FULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LK4/c;-><init>(Ljava/lang/String;II)V

    sput-object v2, LK4/c;->CACHE_FULL:LK4/c;

    new-instance v3, LK4/c;

    const-string v4, "PAYLOAD_TOO_BIG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LK4/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, LK4/c;->PAYLOAD_TOO_BIG:LK4/c;

    new-instance v4, LK4/c;

    const-string v5, "MAX_RETRIES_REACHED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, LK4/c;-><init>(Ljava/lang/String;II)V

    sput-object v4, LK4/c;->MAX_RETRIES_REACHED:LK4/c;

    new-instance v5, LK4/c;

    const-string v6, "INVALID_PAYLOD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, LK4/c;-><init>(Ljava/lang/String;II)V

    sput-object v5, LK4/c;->INVALID_PAYLOD:LK4/c;

    new-instance v6, LK4/c;

    const-string v7, "SERVER_ERROR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, LK4/c;-><init>(Ljava/lang/String;II)V

    sput-object v6, LK4/c;->SERVER_ERROR:LK4/c;

    filled-new-array/range {v0 .. v6}, [LK4/c;

    move-result-object v0

    sput-object v0, LK4/c;->$VALUES:[LK4/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LK4/c;->number_:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LK4/c;
    .locals 1

    const-class v0, LK4/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LK4/c;

    return-object p0
.end method

.method public static values()[LK4/c;
    .locals 1

    sget-object v0, LK4/c;->$VALUES:[LK4/c;

    invoke-virtual {v0}, [LK4/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK4/c;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, LK4/c;->number_:I

    return p0
.end method
