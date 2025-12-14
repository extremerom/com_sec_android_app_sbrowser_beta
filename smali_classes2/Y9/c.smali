.class public final enum LY9/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LY9/c;

.field public static final enum DELETE_APP_DATA:LY9/c;

.field public static final enum DELETE_SENSITIVE_APP_DATA:LY9/c;

.field public static final enum SEND_PREVIOUS_REGISTRATION_INFO:LY9/c;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LY9/c;

    const-string v1, "com.sec.android.diagmonagent.sa.terms.DELETE_APP_DATA"

    const-string v2, "DELETE_APP_DATA"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, LY9/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LY9/c;->DELETE_APP_DATA:LY9/c;

    new-instance v1, LY9/c;

    const-string v2, "com.sec.android.diagmonagent.sa.terms.DELETE_SENSITIVE_APP_DATA"

    const-string v3, "DELETE_SENSITIVE_APP_DATA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, LY9/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, LY9/c;->DELETE_SENSITIVE_APP_DATA:LY9/c;

    new-instance v2, LY9/c;

    const-string v3, "None"

    const-string v4, "SEND_PREVIOUS_REGISTRATION_INFO"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, LY9/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, LY9/c;->SEND_PREVIOUS_REGISTRATION_INFO:LY9/c;

    filled-new-array {v0, v1, v2}, [LY9/c;

    move-result-object v0

    sput-object v0, LY9/c;->$VALUES:[LY9/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LY9/c;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LY9/c;
    .locals 1

    const-class v0, LY9/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LY9/c;

    return-object p0
.end method

.method public static values()[LY9/c;
    .locals 1

    sget-object v0, LY9/c;->$VALUES:[LY9/c;

    invoke-virtual {v0}, [LY9/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LY9/c;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LY9/c;->action:Ljava/lang/String;

    return-object p0
.end method
