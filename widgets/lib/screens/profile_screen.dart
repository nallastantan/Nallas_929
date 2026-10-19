import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedTab = 0;

  static const Color facebookBlue = Color(0xFF0866FF);
  static const Color lightGrey = Color(0xFFE4E6EB);

  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 2)),
    );
  }

  Widget _buildDetail({required IconData icon, required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.black54),
          const SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 215,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        'https://images.unsplash.com/photo-1507525428034-b723cf961d3e'
                        '?auto=format&fit=crop&w=1200&q=80',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: const Color(0xFF26364A),
                            child: const Icon(
                              Icons.landscape,
                              size: 70,
                              color: Colors.white70,
                            ),
                          );
                        },
                      ),
                    ),

                    Positioned.fill(
                      child: Container(
                        color: Colors.black.withValues(alpha: 0.12),
                      ),
                    ),

                    Positioned(
                      left: 10,
                      top: 12,
                      child: IconButton(
                        onPressed: () => showMessage('Menu tapped'),
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 27,
                        ),
                      ),
                    ),

                    Positioned(
                      right: 105,
                      top: 12,
                      child: IconButton(
                        onPressed: () => showMessage('Edit cover photo'),
                        icon: const Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),

                    Positioned(
                      right: 58,
                      top: 12,
                      child: IconButton(
                        onPressed: () => showMessage('Search tapped'),
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                    ),

                    Positioned(
                      right: 8,
                      top: 12,
                      child: IconButton(
                        onPressed: () => showMessage('More options'),
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 27,
                        ),
                      ),
                    ),

                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: -48,
                      child: Center(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 54,
                                backgroundColor: Color(0xFFE4E6EB),
                                child: ClipOval(
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1500648767791-00dcc994a43e'
                                    '?auto=format&fit=crop&w=400&q=80',
                                    width: 108,
                                    height: 108,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            const Icon(
                                              Icons.person,
                                              size: 54,
                                              color: Colors.white70,
                                            ),
                                  ),
                                ),
                              ),
                            ),

                            Positioned(
                              right: -2,
                              bottom: 2,
                              child: Material(
                                color: Colors.white,
                                shape: const CircleBorder(),
                                child: IconButton(
                                  onPressed: () =>
                                      showMessage('Change profile picture'),
                                  icon: const Icon(Icons.camera_alt, size: 19),
                                  constraints: const BoxConstraints(
                                    minWidth: 38,
                                    minHeight: 38,
                                  ),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Profile information
              const SizedBox(height: 48),

              const Center(
                child: Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 2),

              const Center(
                child: Text('3 posts', style: TextStyle(fontSize: 14)),
              ),

              const SizedBox(height: 8),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, size: 17),
                  SizedBox(width: 3),
                  Text('Iloilo City', style: TextStyle(fontSize: 14)),
                ],
              ),

              const SizedBox(height: 16),

             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 38,
                        child: ElevatedButton.icon(
                          onPressed: () => showMessage('Add to story tapped'),
                          icon: const Icon(Icons.add_circle_outline, size: 17),
                          label: const Text('Add to story'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: facebookBlue,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: SizedBox(
                        height: 38,
                        child: ElevatedButton.icon(
                          onPressed: () => showMessage('Edit profile tapped'),
                          icon: const Icon(Icons.edit, size: 16),
                          label: const Text('Edit profile'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: lightGrey,
                            foregroundColor: Colors.black,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

                     
              _buildDetail(
                icon: Icons.location_on_outlined,
                text: 'Iloilo City, Philippines',
              ),

              _buildDetail(icon: Icons.home, text: 'Address not provided'),

               _buildDetail(
                icon: Icons.cake,
                text: 'November 5, 2005',
              ),


              
            ],
          ),
        ),
      ),
    );
  }
}
