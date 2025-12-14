.class public final Lorg/chromium/components/webauthn/Fido2ApiCall;
.super Lb5/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;,
        Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;,
        Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;,
        Lorg/chromium/components/webauthn/Fido2ApiCall$Interface;,
        Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;,
        Lorg/chromium/components/webauthn/Fido2ApiCall$WebauthnCredentialDetailsListResult;,
        Lorg/chromium/components/webauthn/Fido2ApiCall$ByteArrayResult;,
        Lorg/chromium/components/webauthn/Fido2ApiCall$BooleanResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/j;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final APP_API:Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

.field private static final APP_CLIENT_KEY:Lb5/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/f;"
        }
    .end annotation
.end field

.field private static final APP_INTERFACES:Lorg/chromium/components/webauthn/Fido2Api$Calls;

.field static final BROWSER_API:Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

.field private static final BROWSER_CLIENT_KEY:Lb5/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/f;"
        }
    .end annotation
.end field

.field private static final BROWSER_INTERFACES:Lorg/chromium/components/webauthn/Fido2Api$Calls;

.field private static final FIRSTPARTY_CLIENT_KEY:Lb5/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/f;"
        }
    .end annotation
.end field

.field public static final FIRST_PARTY_API:Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

.field public static final METHOD_APP_ISUVPAA:I = 0x1523

.field public static final METHOD_APP_REGISTER:I = 0x151f

.field public static final METHOD_APP_SIGN:I = 0x1520

.field public static final METHOD_BROWSER_GETCREDENTIALS:I = 0x1536

.field public static final METHOD_BROWSER_HYBRID_SIGN:I = 0x1542

.field public static final METHOD_BROWSER_ISUVPAA:I = 0x1528

.field public static final METHOD_BROWSER_REGISTER:I = 0x1524

.field public static final METHOD_BROWSER_SIGN:I = 0x1525

.field public static final METHOD_GET_LINK_INFO:I = 0x154a

.field public static final METHOD_LIST_PASSKEYS_FOR_RP:I = 0x0

.field public static final PERSISTENT_API:Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

.field public static final PERSISTENT_API_INTERFACE:Ljava/lang/String; = "com.google.android.gms.auth.api.fido.IListPasskeysForRpCallback"

.field private static final PERSISTENT_CLIENT_KEY:Lb5/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/f;"
        }
    .end annotation
.end field

.field public static final TRANSACTION_GETCREDENTIALS:I = 0x4

.field public static final TRANSACTION_GET_LINK_INFO:I = 0x1

.field public static final TRANSACTION_HYBRID_SIGN:I = 0x5

.field public static final TRANSACTION_ISUVPAA:I = 0x3

.field public static final TRANSACTION_LIST_PASSKEYS_FOR_RP:I = 0x1

.field public static final TRANSACTION_REGISTER:I = 0x1

.field public static final TRANSACTION_SIGN:I = 0x2


# instance fields
.field private final mDescriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Lb5/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/components/webauthn/Fido2ApiCall;->APP_CLIENT_KEY:Lb5/f;

    new-instance v8, Lorg/chromium/components/webauthn/Fido2ApiCall$1;

    invoke-direct {v8}, Lorg/chromium/components/webauthn/Fido2ApiCall$1;-><init>()V

    sput-object v8, Lorg/chromium/components/webauthn/Fido2ApiCall;->APP_INTERFACES:Lorg/chromium/components/webauthn/Fido2Api$Calls;

    new-instance v9, Lb5/f;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    sput-object v9, Lorg/chromium/components/webauthn/Fido2ApiCall;->BROWSER_CLIENT_KEY:Lb5/f;

    new-instance v17, Lorg/chromium/components/webauthn/Fido2ApiCall$2;

    invoke-direct/range {v17 .. v17}, Lorg/chromium/components/webauthn/Fido2ApiCall$2;-><init>()V

    sput-object v17, Lorg/chromium/components/webauthn/Fido2ApiCall;->BROWSER_INTERFACES:Lorg/chromium/components/webauthn/Fido2Api$Calls;

    new-instance v15, Lb5/f;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    sput-object v15, Lorg/chromium/components/webauthn/Fido2ApiCall;->FIRSTPARTY_CLIENT_KEY:Lb5/f;

    new-instance v10, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    new-instance v2, Lb5/g;

    new-instance v1, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;

    const-string v3, "com.google.android.gms.fido.fido2.regular.START"

    const/16 v4, 0x94

    const-string v5, "com.google.android.gms.fido.fido2.internal.regular.IFido2AppService"

    invoke-direct {v1, v5, v3, v4}, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "Fido.FIDO2_API"

    invoke-direct {v2, v3, v1, v0}, Lb5/g;-><init>(Ljava/lang/String;Lb5/a;Lb5/f;)V

    const/16 v6, 0x1520

    const/16 v7, 0x1523

    const-string v3, "com.google.android.gms.fido.fido2.internal.regular.IFido2AppService"

    const-string v4, "com.google.android.gms.fido.fido2.internal.regular.IFido2AppCallbacks"

    const/16 v5, 0x151f

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;-><init>(Lb5/g;Ljava/lang/String;Ljava/lang/String;IIILorg/chromium/components/webauthn/Fido2Api$Calls;)V

    sput-object v10, Lorg/chromium/components/webauthn/Fido2ApiCall;->APP_API:Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    new-instance v0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    new-instance v11, Lb5/g;

    new-instance v1, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;

    const-string v2, "com.google.android.gms.fido.fido2.privileged.START"

    const/16 v3, 0x95

    const-string v4, "com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedService"

    invoke-direct {v1, v4, v2, v3}, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "Fido.FIDO2_PRIVILEGED_API"

    invoke-direct {v11, v2, v1, v9}, Lb5/g;-><init>(Ljava/lang/String;Lb5/a;Lb5/f;)V

    const/16 v1, 0x1525

    const/16 v16, 0x1528

    const-string v12, "com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedService"

    const-string v13, "com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedCallbacks"

    const/16 v14, 0x1524

    move-object v10, v0

    move-object v2, v15

    move v15, v1

    invoke-direct/range {v10 .. v17}, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;-><init>(Lb5/g;Ljava/lang/String;Ljava/lang/String;IIILorg/chromium/components/webauthn/Fido2Api$Calls;)V

    sput-object v0, Lorg/chromium/components/webauthn/Fido2ApiCall;->BROWSER_API:Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    new-instance v0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    new-instance v1, Lb5/g;

    new-instance v3, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;

    const-string v4, "com.google.android.gms.fido.fido2.firstparty.START"

    const/16 v5, 0x15b

    const-string v6, "com.google.android.gms.fido.fido2.internal.firstparty.IFido2FirstPartyService"

    invoke-direct {v3, v6, v4, v5}, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "Fido.FIDO2_FIRSTPARTY_API"

    invoke-direct {v1, v4, v3, v2}, Lb5/g;-><init>(Ljava/lang/String;Lb5/a;Lb5/f;)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v20, "com.google.android.gms.fido.fido2.internal.firstparty.IFido2FirstPartyService"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-direct/range {v18 .. v25}, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;-><init>(Lb5/g;Ljava/lang/String;Ljava/lang/String;IIILorg/chromium/components/webauthn/Fido2Api$Calls;)V

    sput-object v0, Lorg/chromium/components/webauthn/Fido2ApiCall;->FIRST_PARTY_API:Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    new-instance v0, Lb5/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/components/webauthn/Fido2ApiCall;->PERSISTENT_CLIENT_KEY:Lb5/f;

    new-instance v9, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    new-instance v2, Lb5/g;

    new-instance v1, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;

    const-string v3, "com.google.android.gms.auth.api.passkeys_cache.START"

    const/16 v4, 0x194

    const-string v5, "com.google.android.gms.auth.api.fido.IFidoPersistentService"

    invoke-direct {v1, v5, v3, v4}, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "Fido.PERSISTENT_API"

    invoke-direct {v2, v3, v1, v0}, Lb5/g;-><init>(Ljava/lang/String;Lb5/a;Lb5/f;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "com.google.android.gms.auth.api.fido.IFidoPersistentService"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;-><init>(Lb5/g;Ljava/lang/String;Ljava/lang/String;IIILorg/chromium/components/webauthn/Fido2Api$Calls;)V

    sput-object v9, Lorg/chromium/components/webauthn/Fido2ApiCall;->PERSISTENT_API:Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;)V
    .locals 3

    iget-object v0, p2, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mApi:Lb5/g;

    sget-object v1, Lb5/c;->U:Lb5/b;

    new-instance v2, Lc5/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lb5/j;-><init>(Landroid/content/Context;Lb5/g;Lb5/c;Lc5/a;)V

    iget-object p1, p2, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mDescriptor:Ljava/lang/String;

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2ApiCall;->mDescriptor:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c(Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;ILandroid/os/Parcel;Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;LR5/i;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/chromium/components/webauthn/Fido2ApiCall;->lambda$run$0(Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;ILandroid/os/Parcel;Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;LR5/i;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;ILandroid/os/Parcel;Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;LR5/i;)V
    .locals 0

    invoke-interface {p0, p4}, Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;->setCompletionSource(LR5/i;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    :try_start_0
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lorg/chromium/components/webauthn/Fido2ApiCall$Interface;

    invoke-virtual {p3}, Lorg/chromium/components/webauthn/Fido2ApiCall$Interface;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    const/4 p4, 0x0

    invoke-interface {p3, p1, p2, p0, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {p0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method


# virtual methods
.method public run(IILandroid/os/Parcel;Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;)LR5/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(II",
            "Landroid/os/Parcel;",
            "Lorg/chromium/components/webauthn/Fido2ApiCall$Callback<",
            "TResult;>;)",
            "LR5/h;"
        }
    .end annotation

    invoke-static {}, Lc5/u;->a()LG6/f;

    move-result-object v0

    new-instance v1, Lorg/chromium/components/webauthn/c;

    invoke-direct {v1, p4, p2, p3}, Lorg/chromium/components/webauthn/c;-><init>(Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;ILandroid/os/Parcel;)V

    iput-object v1, v0, LG6/f;->d:Ljava/lang/Object;

    iput p1, v0, LG6/f;->c:I

    invoke-virtual {v0}, LG6/f;->a()Lc5/L;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb5/j;->doRead(Lc5/u;)LR5/h;

    move-result-object p0

    return-object p0
.end method

.method public start()Landroid/os/Parcel;
    .locals 1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2ApiCall;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method
