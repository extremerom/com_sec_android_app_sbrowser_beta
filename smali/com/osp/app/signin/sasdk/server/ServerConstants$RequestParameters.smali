.class public Lcom/osp/app/signin/sasdk/server/ServerConstants$RequestParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/server/ServerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/osp/app/signin/sasdk/server/ServerConstants$RequestParameters$DeviceType;
    }
.end annotation


# static fields
.field public static final APP_ID_HEADER:Ljava/lang/String; = "x-osp-appId"

.field public static final APP_ID_QUERY:Ljava/lang/String; = "appID"

.field public static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field public static final AUTH_CODE:Ljava/lang/String; = "linkingCode"

.field public static final AUTH_SERVER_URL_QUERY:Ljava/lang/String; = "auth_server_url"

.field public static final CLIENT_ID_QUERY:Ljava/lang/String; = "clientId"

.field public static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field public static final COUNTRY_CODE:Ljava/lang/String; = "countryCode"

.field public static final DISCLAIMER_FLAG_QUERY:Ljava/lang/String; = "disclaimerYNFlag"

.field public static final LANGUAGE_CODE:Ljava/lang/String; = "languageCode"

.field static final LOCALE:Ljava/lang/String; = "locale"

.field public static final RETURN_TYPE_QUERY:Ljava/lang/String; = "returnType"

.field public static final SERVICE_ID_FOR_CLIENT:Ljava/lang/String; = "serviceID"

.field public static final SERVICE_ID_QUERY:Ljava/lang/String; = "serviceId"

.field public static final STATE_QUERY:Ljava/lang/String; = "state"

.field static final SVC_PARAM:Ljava/lang/String; = "svcParam"

.field public static final TOKEN_VALUE:Ljava/lang/String; = "tokenValue"

.field public static final UI_MODE:Ljava/lang/String; = "mode"

.field public static final USER_ID_HEADER:Ljava/lang/String; = "x-osp-userId"

.field public static final USER_ID_QUERY:Ljava/lang/String; = "userID"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "RequestParameters can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
