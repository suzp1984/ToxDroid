package suzp1984.github.io.tox4j.wrapper;

/**
 * Created by jacobsu on 7/4/16.
 */
public interface ToxCore {
    int getConnectionStatus();
    String getName();
    byte[] getAddress();
    byte[] getAddressNoSpamPart();
    byte[] setAddressNoSpamPart();
    byte[] getPublicKey();
    byte[] getSecretKey();
    String getStatusMessage();
    int getUdpPort();
    int getTcpPort();
    int getStatus();

    void setName(String name);
    void setStatusMessage(String message);
    void setStatus(int status);

    void bootStrap(String address, int port, byte public_key[]);

    void run();
    void stop();

    void addEventListener(ToxCoreEventListener listener);
    void removeEventListener(ToxCoreEventListener listener);

    void addFriend(byte[] address, String message);
    void addFriendNoRequest(byte[] publicKey);
    void deleteFriend(int number);
    int  getFriendNumberByPublicKey(byte[] publicKey);
    boolean isFriendExists(int number);
    int getFriendListSize();
    int[] getFriendList();
    byte[] getPublicKeyOfFriend(int number);
    String getFriendName(int number);
}
