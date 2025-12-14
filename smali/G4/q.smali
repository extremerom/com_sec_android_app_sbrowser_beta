.class public final enum LG4/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LG4/q;

.field public static final enum ANDROID_FIREBASE:LG4/q;

.field public static final enum UNKNOWN:LG4/q;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LG4/q;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LG4/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, LG4/q;->UNKNOWN:LG4/q;

    new-instance v1, LG4/q;

    const/16 v2, 0x17

    const-string v3, "ANDROID_FIREBASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, LG4/q;-><init>(Ljava/lang/String;II)V

    sput-object v1, LG4/q;->ANDROID_FIREBASE:LG4/q;

    filled-new-array {v0, v1}, [LG4/q;

    move-result-object v0

    sput-object v0, LG4/q;->$VALUES:[LG4/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LG4/q;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LG4/q;
    .locals 1

    const-class v0, LG4/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LG4/q;

    return-object p0
.end method

.method public static values()[LG4/q;
    .locals 1

    sget-object v0, LG4/q;->$VALUES:[LG4/q;

    invoke-virtual {v0}, [LG4/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG4/q;

    return-object v0
.end method
