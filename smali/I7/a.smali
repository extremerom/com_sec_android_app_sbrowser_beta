.class public final enum LI7/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lx7/b;


# static fields
.field private static final synthetic $VALUES:[LI7/a;

.field public static final enum MESSAGE_DELIVERED:LI7/a;

.field public static final enum MESSAGE_OPEN:LI7/a;

.field public static final enum UNKNOWN_EVENT:LI7/a;


# instance fields
.field private final number_:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LI7/a;

    const-string v1, "UNKNOWN_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LI7/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LI7/a;->UNKNOWN_EVENT:LI7/a;

    new-instance v1, LI7/a;

    const-string v2, "MESSAGE_DELIVERED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LI7/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, LI7/a;->MESSAGE_DELIVERED:LI7/a;

    new-instance v2, LI7/a;

    const-string v3, "MESSAGE_OPEN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LI7/a;-><init>(Ljava/lang/String;II)V

    sput-object v2, LI7/a;->MESSAGE_OPEN:LI7/a;

    filled-new-array {v0, v1, v2}, [LI7/a;

    move-result-object v0

    sput-object v0, LI7/a;->$VALUES:[LI7/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LI7/a;->number_:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LI7/a;
    .locals 1

    const-class v0, LI7/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LI7/a;

    return-object p0
.end method

.method public static values()[LI7/a;
    .locals 1

    sget-object v0, LI7/a;->$VALUES:[LI7/a;

    invoke-virtual {v0}, [LI7/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LI7/a;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, LI7/a;->number_:I

    return p0
.end method
